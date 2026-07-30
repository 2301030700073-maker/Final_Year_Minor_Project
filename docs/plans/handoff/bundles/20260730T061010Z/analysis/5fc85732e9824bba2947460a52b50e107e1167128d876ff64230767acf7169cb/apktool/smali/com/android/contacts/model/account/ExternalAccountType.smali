.class public Lcom/android/contacts/model/account/ExternalAccountType;
.super Lcom/android/contacts/model/account/BaseAccountType;
.source "ExternalAccountType.java"


# static fields
.field private static final ATTR_ACCOUNT_ICON:Ljava/lang/String; = "accountTypeIcon"

.field private static final ATTR_ACCOUNT_LABEL:Ljava/lang/String; = "accountTypeLabel"

.field private static final ATTR_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field private static final ATTR_DATA_SET:Ljava/lang/String; = "dataSet"

.field private static final ATTR_EXTENSION_PACKAGE_NAMES:Ljava/lang/String; = "extensionPackageNames"

.field private static final ATTR_INVITE_CONTACT_ACTION_LABEL:Ljava/lang/String; = "inviteContactActionLabel"

.field private static final ATTR_INVITE_CONTACT_ACTIVITY:Ljava/lang/String; = "inviteContactActivity"

.field private static final ATTR_VIEW_CONTACT_NOTIFY_SERVICE:Ljava/lang/String; = "viewContactNotifyService"

.field private static final ATTR_VIEW_GROUP_ACTION_LABEL:Ljava/lang/String; = "viewGroupActionLabel"

.field private static final ATTR_VIEW_GROUP_ACTIVITY:Ljava/lang/String; = "viewGroupActivity"

.field private static final METADATA_CONTACTS_NAMES:[Ljava/lang/String;

.field private static final SYNC_META_DATA:Ljava/lang/String; = "android.content.SyncAdapter"

.field private static final TAG:Ljava/lang/String; = "ExternalAccountType"

.field private static final TAG_CONTACTS_ACCOUNT_TYPE:Ljava/lang/String; = "ContactsAccountType"

.field private static final TAG_CONTACTS_DATA_KIND:Ljava/lang/String; = "ContactsDataKind"

.field private static final TAG_CONTACTS_SOURCE_LEGACY:Ljava/lang/String; = "ContactsSource"

.field private static final TAG_EDIT_SCHEMA:Ljava/lang/String; = "EditSchema"


# instance fields
.field private mAccountTypeIconAttribute:Ljava/lang/String;

.field private mAccountTypeLabelAttribute:Ljava/lang/String;

.field private mExtensionPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMembershipEditable:Z

.field private mHasContactsMetadata:Z

.field private mHasEditSchema:Z

.field private mInviteActionLabelAttribute:Ljava/lang/String;

.field private mInviteActionLabelResId:I

.field private mInviteContactActivity:Ljava/lang/String;

.field private final mIsExtension:Z

.field private mViewContactNotifyService:Ljava/lang/String;

.field private mViewGroupActivity:Ljava/lang/String;

.field private mViewGroupLabelAttribute:Ljava/lang/String;

.field private mViewGroupLabelResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.provider.ALTERNATE_CONTACTS_STRUCTURE"

    const-string v1, "android.provider.CONTACTS_STRUCTURE"

    .line 65
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/account/ExternalAccountType;->METADATA_CONTACTS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V
    .locals 4

    .line 116
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType;-><init>()V

    .line 117
    iput-boolean p3, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mIsExtension:Z

    .line 118
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    if-nez p4, :cond_0

    .line 123
    invoke-static {p1, p2}, Lcom/android/contacts/model/account/ExternalAccountType;->loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 130
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/model/account/ExternalAccountType;->inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lcom/android/contacts/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 135
    :cond_1
    :goto_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mHasEditSchema:Z

    if-eqz v2, :cond_2

    const-string v2, "vnd.android.cursor.item/name"

    .line 136
    invoke-direct {p0, v2}, Lcom/android/contacts/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    const-string v2, "#name"

    .line 137
    invoke-direct {p0, v2}, Lcom/android/contacts/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    const-string v2, "#phoneticName"

    .line 138
    invoke-direct {p0, v2}, Lcom/android/contacts/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    const-string v2, "vnd.android.cursor.item/photo"

    .line 139
    invoke-direct {p0, v2}, Lcom/android/contacts/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    goto :goto_2

    .line 142
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    :try_end_1
    .catch Lcom/android/contacts/model/account/AccountType$DefinitionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz p3, :cond_3

    .line 165
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 169
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    .line 170
    iget-object p2, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mInviteActionLabelAttribute:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string p4, "inviteContactActionLabel"

    invoke-static {p1, p2, p3, p4}, Lcom/android/contacts/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mInviteActionLabelResId:I

    .line 172
    iget-object p2, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewGroupLabelAttribute:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string p4, "viewGroupActionLabel"

    invoke-static {p1, p2, p3, p4}, Lcom/android/contacts/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewGroupLabelResId:I

    .line 174
    iget-object p2, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mAccountTypeLabelAttribute:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string p4, "accountTypeLabel"

    invoke-static {p1, p2, p3, p4}, Lcom/android/contacts/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/contacts/model/account/AccountType;->titleRes:I

    .line 176
    iget-object p2, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mAccountTypeIconAttribute:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string p4, "accountTypeIcon"

    invoke-static {p1, p2, p3, p4}, Lcom/android/contacts/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/model/account/AccountType;->iconRes:I

    const-string p1, "vnd.android.cursor.item/group_membership"

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 180
    iget-boolean p1, p1, Lcom/android/contacts/model/dataitem/DataKind;->editable:Z

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mGroupMembershipEditable:Z

    .line 183
    iput-boolean v1, p0, Lcom/android/contacts/model/account/AccountType;->mIsInitialized:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    .line 148
    :goto_3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem reading XML"

    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    const-string v1, " in line "

    .line 151
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, " for external package "

    .line 154
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_6

    const-string p2, "ExternalAccountType"

    const-string p4, "Failed to build external account type"

    .line 159
    invoke-static {p1, p2, p4, v0}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    if-eqz p3, :cond_7

    .line 165
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    return-void

    :goto_4
    if-eqz p3, :cond_8

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 167
    :cond_8
    throw p1
.end method

.method private checkKindExists(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 237
    :cond_0
    new-instance v0, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasContactsXml(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 232
    invoke-static {p0, p1}, Lcom/android/contacts/model/account/ExternalAccountType;->loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isFromTestApp(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.google.android.contacts.tests"

    .line 448
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 7

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.SyncAdapter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x84

    .line 200
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 205
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    sget-object v1, Lcom/android/contacts/model/account/ExternalAccountType;->METADATA_CONTACTS_NAMES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 210
    invoke-virtual {v0, p0, v5}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string p0, "ExternalAccountType"

    const/4 p1, 0x3

    .line 213
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array p1, p1, [Ljava/lang/Object;

    .line 214
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    aput-object v1, p1, v3

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const/4 v0, 0x2

    aput-object v5, p1, v0

    const-string v0, "Metadata loaded from: %s, %s, %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method static resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 420
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x40

    const/4 v3, 0x5

    const-string v4, "ExternalAccountType"

    if-eq v0, v2, :cond_2

    .line 421
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lcom/android/contacts/model/account/ExternalAccountType;->isFromTestApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 422
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a resource name beginnig with \'@\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    const/4 p3, 0x1

    .line 426
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 429
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 436
    invoke-virtual {p0, p3, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_4

    .line 438
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p2}, Lcom/android/contacts/model/account/ExternalAccountType;->isFromTestApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 439
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to load "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    return p0

    :catch_0
    nop

    .line 431
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p2}, Lcom/android/contacts/model/account/ExternalAccountType;->isFromTestApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 432
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to load package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mHasEditSchema:Z

    return v0
.end method

.method public getExtensionPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    return-object v0
.end method

.method protected getInviteContactActionResId()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mInviteActionLabelResId:I

    return v0
.end method

.method public getInviteContactActivityClassName()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mInviteContactActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getViewContactNotifyServiceClassName()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewContactNotifyService:Ljava/lang/String;

    return-object v0
.end method

.method public getViewGroupActivity()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewGroupActivity:Ljava/lang/String;

    return-object v0
.end method

.method protected getViewGroupLabelResId()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewGroupLabelResId:I

    return v0
.end method

.method public hasContactsMetadata()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mHasContactsMetadata:Z

    return v0
.end method

.method protected inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    const-string v0, "Problem reading XML"

    const-string v1, "ExternalAccountType"

    .line 303
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 307
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne v3, v4, :cond_17

    .line 316
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ContactsAccountType"

    .line 317
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "ContactsSource"

    .line 318
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 319
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Top level element must be ContactsAccountType, not "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mHasContactsMetadata:Z

    .line 325
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x3

    if-ge v6, v3, :cond_f

    .line 327
    invoke-interface {p2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 328
    invoke-interface {p2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 329
    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 330
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v7, "inviteContactActivity"

    .line 332
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 333
    iput-object v9, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mInviteContactActivity:Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    const-string v7, "inviteContactActionLabel"

    .line 334
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 335
    iput-object v9, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mInviteActionLabelAttribute:Ljava/lang/String;

    goto/16 :goto_3

    :cond_5
    const-string v7, "viewContactNotifyService"

    .line 336
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 337
    iput-object v9, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewContactNotifyService:Ljava/lang/String;

    goto/16 :goto_3

    :cond_6
    const-string v7, "viewGroupActivity"

    .line 338
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 339
    iput-object v9, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewGroupActivity:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string v7, "viewGroupActionLabel"

    .line 340
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 341
    iput-object v9, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mViewGroupLabelAttribute:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const-string v7, "dataSet"

    .line 342
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 343
    iput-object v9, p0, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    goto :goto_3

    :cond_9
    const-string v7, "extensionPackageNames"

    .line 344
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 345
    iget-object v7, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    const-string v7, "accountType"

    .line 346
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 347
    iput-object v9, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    goto :goto_3

    :cond_b
    const-string v7, "accountTypeLabel"

    .line 348
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 349
    iput-object v9, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mAccountTypeLabelAttribute:Ljava/lang/String;

    goto :goto_3

    :cond_c
    const-string v7, "accountTypeIcon"

    .line 350
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 351
    iput-object v9, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mAccountTypeIconAttribute:Ljava/lang/String;

    goto :goto_3

    :cond_d
    const/4 v7, 0x5

    .line 352
    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 353
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported attribute "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 358
    :cond_f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 359
    :cond_10
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v7, :cond_11

    .line 360
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_16

    :cond_11
    if-eq v3, v5, :cond_16

    if-ne v3, v4, :cond_10

    .line 363
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    add-int/lit8 v6, v1, 0x1

    if-eq v3, v6, :cond_12

    goto :goto_4

    .line 367
    :cond_12
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "EditSchema"

    .line 368
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 369
    iput-boolean v5, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mHasEditSchema:Z

    .line 370
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/contacts/model/account/BaseAccountType;->parseEditSchema(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    goto :goto_4

    :cond_13
    const-string v6, "ContactsDataKind"

    .line 371
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 372
    sget-object v3, Lcom/android/contacts/R$styleable;->ContactsDataKind:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 374
    new-instance v6, Lcom/android/contacts/model/dataitem/DataKind;

    invoke-direct {v6}, Lcom/android/contacts/model/dataitem/DataKind;-><init>()V

    .line 377
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 378
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 382
    new-instance v9, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v9, v8}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v9, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 384
    :cond_14
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_15

    .line 388
    new-instance v9, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v9, v8}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v9, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 391
    :cond_15
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 393
    invoke-virtual {p0, v6}, Lcom/android/contacts/model/account/AccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    goto :goto_4

    :cond_16
    return-void

    .line 313
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No start tag found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 399
    new-instance p2, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    invoke-direct {p2, v0, p1}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 397
    new-instance p2, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    invoke-direct {p2, v0, p1}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public isEmbedded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExtension()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mIsExtension:Z

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/android/contacts/model/account/ExternalAccountType;->mGroupMembershipEditable:Z

    return v0
.end method

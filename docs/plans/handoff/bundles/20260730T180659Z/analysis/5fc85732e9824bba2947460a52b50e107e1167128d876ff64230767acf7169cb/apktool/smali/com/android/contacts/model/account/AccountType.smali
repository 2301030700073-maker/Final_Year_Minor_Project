.class public abstract Lcom/android/contacts/model/account/AccountType;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/account/AccountType$DisplayLabelComparator;,
        Lcom/android/contacts/model/account/AccountType$StringInflater;,
        Lcom/android/contacts/model/account/AccountType$EditField;,
        Lcom/android/contacts/model/account/AccountType$EventEditType;,
        Lcom/android/contacts/model/account/AccountType$EditType;,
        Lcom/android/contacts/model/account/AccountType$DefinitionException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountType"

.field private static sWeightComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountType:Ljava/lang/String;

.field public dataSet:Ljava/lang/String;

.field public iconRes:I

.field protected mIsInitialized:Z

.field private mKinds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeKinds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation
.end field

.field public resourcePackageName:Ljava/lang/String;

.field public syncAdapterPackageName:Ljava/lang/String;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 300
    new-instance v0, Lcom/android/contacts/model/account/AccountType$1;

    invoke-direct {v0}, Lcom/android/contacts/model/account/AccountType$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/account/AccountType;->sWeightComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/account/AccountType;->mKinds:Ljava/util/ArrayList;

    .line 99
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/account/AccountType;->mMimeKinds:Ljava/util/HashMap;

    return-void
.end method

.method public static getDisplayIcon(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-eqz p3, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 284
    invoke-virtual {p0, p3, p2, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    if-eq p1, v1, :cond_1

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method static getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p3, 0x0

    .line 268
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    if-eq p2, v0, :cond_1

    .line 270
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p3
.end method


# virtual methods
.method public addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 335
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 338
    iget-object v1, p0, Lcom/android/contacts/model/account/AccountType;->mMimeKinds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->resourcePackageName:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountType;->mKinds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountType;->mMimeKinds:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 339
    :cond_0
    new-instance v0, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mime type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is already registered"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_1
    new-instance p1, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    const-string v0, "null is not a valid mime type"

    invoke-direct {p1, v0}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract areContactsWritable()Z
.end method

.method public getAccountTypeAndDataSet()Lcom/android/contacts/model/account/AccountTypeWithDataSet;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountTypeWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 277
    iget v0, p0, Lcom/android/contacts/model/account/AccountType;->titleRes:I

    iget v1, p0, Lcom/android/contacts/model/account/AccountType;->iconRes:I

    iget-object v2, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/contacts/model/account/AccountType;->titleRes:I

    iget-object v2, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/android/contacts/model/account/AccountType;->getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
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

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getInviteContactActionLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/model/account/AccountType;->getInviteContactActionResId()I

    move-result v1

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/android/contacts/model/account/AccountType;->getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected getInviteContactActionResId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getInviteContactActivityClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountType;->mMimeKinds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/dataitem/DataKind;

    return-object p1
.end method

.method public getSortedDataKinds()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountType;->mKinds:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/contacts/model/account/AccountType;->sWeightComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 314
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountType;->mKinds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewContactNotifyServiceClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewContactNotifyServicePackageName()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getViewGroupActivity()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewGroupLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lcom/android/contacts/model/account/AccountType;->getViewGroupLabelResId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/contacts/model/account/AccountType;->getResourceText(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f100249

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getViewGroupLabelResId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public initializeFieldsFromAuthenticator(Landroid/accounts/AuthenticatorDescription;)V
    .locals 1

    .line 326
    iget-object v0, p1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 327
    iget v0, p1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    iput v0, p0, Lcom/android/contacts/model/account/AccountType;->titleRes:I

    .line 328
    iget p1, p1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    iput p1, p0, Lcom/android/contacts/model/account/AccountType;->iconRes:I

    return-void
.end method

.method public isEmbedded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isExtension()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isGroupMembershipEditable()Z
.end method

.method public final isInitialized()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/android/contacts/model/account/AccountType;->mIsInitialized:Z

    return v0
.end method

.method public wrapAccount(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;
    .locals 8

    .line 193
    iget-object v0, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    const-string v3, "Account types must match: account.type=%s but accountType=%s"

    invoke-static {v0, v3, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    new-instance v0, Lcom/android/contacts/model/account/AccountInfo;

    new-instance v7, Lcom/android/contacts/model/account/AccountDisplayInfo;

    iget-object v3, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/model/account/AccountDisplayInfo;-><init>(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-direct {v0, v7, p0}, Lcom/android/contacts/model/account/AccountInfo;-><init>(Lcom/android/contacts/model/account/AccountDisplayInfo;Lcom/android/contacts/model/account/AccountType;)V

    return-object v0
.end method

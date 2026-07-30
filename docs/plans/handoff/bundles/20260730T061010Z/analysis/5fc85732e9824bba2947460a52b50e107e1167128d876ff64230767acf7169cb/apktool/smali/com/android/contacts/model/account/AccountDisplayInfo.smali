.class public Lcom/android/contacts/model/account/AccountDisplayInfo;
.super Ljava/lang/Object;
.source "AccountDisplayInfo.java"


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIsDeviceAccount:Z

.field private final mName:Ljava/lang/CharSequence;

.field private final mSource:Lcom/android/contacts/model/account/AccountWithDataSet;

.field private final mType:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mSource:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 41
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mName:Ljava/lang/CharSequence;

    .line 42
    iput-object p3, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mType:Ljava/lang/CharSequence;

    .line 43
    iput-object p4, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-boolean p5, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mIsDeviceAccount:Z

    return-void
.end method


# virtual methods
.method public formatted(Landroid/content/Context;II)Lcom/android/contacts/model/account/AccountDisplayInfo;
    .locals 7

    .line 93
    new-instance v6, Lcom/android/contacts/model/account/AccountDisplayInfo;

    iget-object v1, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mSource:Lcom/android/contacts/model/account/AccountWithDataSet;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mName:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array p2, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mType:Ljava/lang/CharSequence;

    aput-object v0, p2, v4

    .line 94
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-boolean v5, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mIsDeviceAccount:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/account/AccountDisplayInfo;-><init>(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    return-object v6
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getNameLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSource()Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mSource:Lcom/android/contacts/model/account/AccountWithDataSet;

    return-object v0
.end method

.method public getTypeLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mType:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasDistinctName()Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mName:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mType:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasGoogleAccountType()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mSource:Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v1, "com.google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDeviceAccount()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mIsDeviceAccount:Z

    return v0
.end method

.method public isGoogleAccount()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mSource:Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v1, "com.google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mSource:Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public withFormattedName(Landroid/content/Context;I)Lcom/android/contacts/model/account/AccountDisplayInfo;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mName:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountDisplayInfo;->withName(Ljava/lang/CharSequence;)Lcom/android/contacts/model/account/AccountDisplayInfo;

    move-result-object p1

    return-object p1
.end method

.method public withName(Ljava/lang/CharSequence;)Lcom/android/contacts/model/account/AccountDisplayInfo;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mType:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/account/AccountDisplayInfo;->withNameAndType(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/contacts/model/account/AccountDisplayInfo;

    move-result-object p1

    return-object p1
.end method

.method public withNameAndType(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/contacts/model/account/AccountDisplayInfo;
    .locals 7

    .line 88
    new-instance v6, Lcom/android/contacts/model/account/AccountDisplayInfo;

    iget-object v1, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mSource:Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v4, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-boolean v5, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mIsDeviceAccount:Z

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/account/AccountDisplayInfo;-><init>(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    return-object v6
.end method

.method public withType(Ljava/lang/CharSequence;)Lcom/android/contacts/model/account/AccountDisplayInfo;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountDisplayInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/account/AccountDisplayInfo;->withNameAndType(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/contacts/model/account/AccountDisplayInfo;

    move-result-object p1

    return-object p1
.end method

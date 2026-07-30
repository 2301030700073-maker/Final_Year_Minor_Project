.class public Lcom/android/contacts/model/account/DeviceLocalAccountType;
.super Lcom/android/contacts/model/account/FallbackAccountType;
.source "DeviceLocalAccountType.java"


# instance fields
.field private final mGroupsEditable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/account/DeviceLocalAccountType;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/contacts/model/account/FallbackAccountType;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean p2, p0, Lcom/android/contacts/model/account/DeviceLocalAccountType;->mGroupsEditable:Z

    return-void
.end method


# virtual methods
.method public isGroupMembershipEditable()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/android/contacts/model/account/DeviceLocalAccountType;->mGroupsEditable:Z

    return v0
.end method

.method public wrapAccount(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;
    .locals 8

    .line 42
    new-instance v0, Lcom/android/contacts/model/account/AccountInfo;

    new-instance v7, Lcom/android/contacts/model/account/AccountDisplayInfo;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/FallbackAccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/model/account/AccountDisplayInfo;-><init>(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-direct {v0, v7, p0}, Lcom/android/contacts/model/account/AccountInfo;-><init>(Lcom/android/contacts/model/account/AccountDisplayInfo;Lcom/android/contacts/model/account/AccountType;)V

    return-object v0
.end method

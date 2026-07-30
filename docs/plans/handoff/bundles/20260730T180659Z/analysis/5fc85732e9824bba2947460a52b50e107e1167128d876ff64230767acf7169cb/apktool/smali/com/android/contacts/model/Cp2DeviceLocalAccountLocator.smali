.class public Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;
.super Lcom/android/contacts/model/DeviceLocalAccountLocator;
.source "Cp2DeviceLocalAccountLocator.java"


# static fields
.field private static final COL_DATA_SET:I = 0x2

.field private static final COL_NAME:I = 0x0

.field private static final COL_TYPE:I = 0x1

.field static PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAccountTypeFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "account_name"

    const-string v1, "account_type"

    const-string v2, "data_set"

    .line 46
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/android/contacts/model/DeviceLocalAccountLocator;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->mResolver:Landroid/content/ContentResolver;

    .line 65
    iput-object p2, p0, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->mAccountTypeFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    .line 67
    invoke-static {p3}, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->getSelection(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->mSelection:Ljava/lang/String;

    .line 68
    invoke-static {p3}, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->getSelectionArgs(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->mSelectionArgs:[Ljava/lang/String;

    return-void
.end method

.method private addAccountsFromCursor(Landroid/database/Cursor;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .line 97
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 98
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 99
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 100
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->mAccountTypeFactory:Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    invoke-static {v3, v1}, Lcom/android/contacts/util/DeviceLocalAccountTypeFactory$Util;->isLocalAccountType(Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    new-instance v3, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addAccountsFromQuery(Landroid/net/Uri;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->mSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 90
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->addAccountsFromCursor(Landroid/database/Cursor;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 93
    throw p2
.end method

.method private static getSelection(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_type"

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IS NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, " OR "

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v1, "?,"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSelectionArgs(Ljava/util/Set;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 137
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getDeviceLocalAccounts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 77
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v0}, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->addAccountsFromQuery(Landroid/net/Uri;Ljava/util/Set;)V

    .line 78
    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v0}, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->addAccountsFromQuery(Landroid/net/Uri;Ljava/util/Set;)V

    .line 79
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v0}, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->addAccountsFromQuery(Landroid/net/Uri;Ljava/util/Set;)V

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

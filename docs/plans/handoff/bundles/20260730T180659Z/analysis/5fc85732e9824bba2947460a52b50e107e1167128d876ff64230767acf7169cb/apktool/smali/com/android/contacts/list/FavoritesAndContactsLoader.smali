.class public Lcom/android/contacts/list/FavoritesAndContactsLoader;
.super Landroid/content/CursorLoader;
.source "FavoritesAndContactsLoader.java"


# instance fields
.field private mLoadFavorites:Z

.field private mProjection:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private loadContacts()Landroid/database/Cursor;
    .locals 1

    .line 76
    :try_start_0
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadFavoritesContacts()Landroid/database/Cursor;
    .locals 8

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starred=?"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Landroid/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    iget v1, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    const-string v1, " AND "

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "in_visible_group=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/contacts/list/FavoritesAndContactsLoader;->mProjection:[Ljava/lang/String;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {p0}, Landroid/content/CursorLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v7

    .line 92
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    .line 57
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 58
    iget-boolean v1, p0, Lcom/android/contacts/list/FavoritesAndContactsLoader;->mLoadFavorites:Z

    if-eqz v1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/android/contacts/list/FavoritesAndContactsLoader;->loadFavoritesContacts()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/FavoritesAndContactsLoader;->loadContacts()Landroid/database/Cursor;

    move-result-object v1

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v2, Lcom/android/contacts/list/FavoritesAndContactsLoader$1;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/database/Cursor;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/Cursor;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/contacts/list/FavoritesAndContactsLoader$1;-><init>(Lcom/android/contacts/list/FavoritesAndContactsLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-object v2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/android/contacts/list/FavoritesAndContactsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoadFavorites(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/contacts/list/FavoritesAndContactsLoader;->mLoadFavorites:Z

    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/android/contacts/list/FavoritesAndContactsLoader;->mProjection:[Ljava/lang/String;

    return-void
.end method

.class public final Lcom/android/contacts/GroupMetaDataLoader;
.super Landroid/content/CursorLoader;
.source "GroupMetaDataLoader.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "account_name"

    const-string v1, "account_type"

    const-string v2, "data_set"

    const-string v3, "_id"

    const-string v4, "title"

    const-string v5, "auto_add"

    const-string v6, "favorites"

    const-string v7, "group_is_read_only"

    const-string v8, "deleted"

    .line 31
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/GroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7

    .line 54
    invoke-static {p2}, Lcom/android/contacts/GroupMetaDataLoader;->ensureIsGroupUri(Landroid/net/Uri;)Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/GroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/android/contacts/group/GroupUtil;->getGroupsSortOrder()Ljava/lang/String;

    move-result-object v6

    const-string v4, "account_type NOT NULL AND account_name NOT NULL AND deleted=0 AND auto_add=0 AND favorites=0"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 54
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    .line 59
    invoke-static {p2}, Lcom/android/contacts/GroupMetaDataLoader;->ensureIsGroupUri(Landroid/net/Uri;)Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/GroupMetaDataLoader;->COLUMNS:[Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/android/contacts/group/GroupUtil;->getGroupsSortOrder()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 59
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static ensureIsGroupUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    if-eqz p0, :cond_1

    .line 72
    invoke-static {p0}, Lcom/android/contacts/group/GroupUtil;->isGroupUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid group Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Uri must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

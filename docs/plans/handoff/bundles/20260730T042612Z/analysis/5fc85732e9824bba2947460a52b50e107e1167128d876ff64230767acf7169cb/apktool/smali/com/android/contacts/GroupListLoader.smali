.class public final Lcom/android/contacts/GroupListLoader;
.super Landroid/content/CursorLoader;
.source "GroupListLoader.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final GROUP_LIST_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "account_name"

    const-string v1, "account_type"

    const-string v2, "data_set"

    const-string v3, "_id"

    const-string v4, "title"

    const-string v5, "summ_count"

    const-string v6, "group_is_read_only"

    const-string v7, "system_id"

    .line 32
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/GroupListLoader;->COLUMNS:[Ljava/lang/String;

    .line 52
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/contacts/GroupListLoader;->GROUP_LIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 55
    sget-object v2, Lcom/android/contacts/GroupListLoader;->GROUP_LIST_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/GroupListLoader;->COLUMNS:[Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/android/contacts/group/GroupUtil;->getGroupsSortOrder()Ljava/lang/String;

    move-result-object v6

    const-string v4, "account_type NOT NULL AND account_name NOT NULL AND deleted=0 AND auto_add=0 AND favorites=0"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 55
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/android/contacts/compat/ContactsCompat;
.super Ljava/lang/Object;
.source "ContactsCompat.java"


# static fields
.field private static final ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter_enterprise"

    .line 37
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/compat/ContactsCompat;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .line 43
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/android/contacts/compat/ContactsCompat;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    return-object v0

    .line 46
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static isEnterpriseContactId(J)Z
    .locals 3

    .line 53
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result p0

    return p0

    :cond_0
    const-wide/32 v0, 0x3b9aca00

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x7fffffff80000000L

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

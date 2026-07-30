.class public Lcom/android/contacts/compat/DirectoryCompat;
.super Ljava/lang/Object;
.source "DirectoryCompat.java"


# direct methods
.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .line 27
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/android/contacts/compat/DirectorySdkCompat;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    return-object v0

    .line 30
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static isEnterpriseDirectoryId(J)Z
    .locals 1

    .line 49
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p0, p1}, Lcom/android/contacts/compat/DirectorySdkCompat;->isEnterpriseDirectoryId(J)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInvisibleDirectory(J)Z
    .locals 5

    .line 34
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->FLAG_N_FEATURE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    if-eqz v0, :cond_2

    cmp-long v0, p0, v3

    if-eqz v0, :cond_1

    const-wide/32 v3, 0x3b9aca01

    cmp-long v0, p0, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    cmp-long v0, p0, v3

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static isRemoteDirectoryId(J)Z
    .locals 3

    .line 42
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Lcom/android/contacts/compat/DirectorySdkCompat;->isRemoteDirectoryId(J)Z

    move-result p0

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

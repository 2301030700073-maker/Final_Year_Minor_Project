.class public Lcom/android/contacts/compat/DirectorySdkCompat;
.super Ljava/lang/Object;
.source "DirectorySdkCompat.java"


# static fields
.field public static final ENTERPRISE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-object v0, Landroid/provider/ContactsContract$Directory;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/contacts/compat/DirectorySdkCompat;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static isEnterpriseDirectoryId(J)Z
    .locals 1

    .line 35
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isNCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Directory;->isEnterpriseDirectoryId(J)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRemoteDirectoryId(J)Z
    .locals 1

    .line 31
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isNCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Directory;->isRemoteDirectoryId(J)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

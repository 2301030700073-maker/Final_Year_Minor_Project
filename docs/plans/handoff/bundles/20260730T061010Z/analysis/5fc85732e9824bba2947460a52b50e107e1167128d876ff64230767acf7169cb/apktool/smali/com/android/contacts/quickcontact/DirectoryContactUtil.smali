.class public Lcom/android/contacts/quickcontact/DirectoryContactUtil;
.super Ljava/lang/Object;
.source "DirectoryContactUtil.java"


# direct methods
.method public static isDirectoryContact(Lcom/android/contacts/model/Contact;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->getDirectoryExportSupport()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

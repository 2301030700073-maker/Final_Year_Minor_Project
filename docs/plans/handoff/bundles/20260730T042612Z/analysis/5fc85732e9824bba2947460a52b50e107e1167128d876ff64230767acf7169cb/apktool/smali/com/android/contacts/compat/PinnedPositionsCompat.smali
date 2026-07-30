.class public Lcom/android/contacts/compat/PinnedPositionsCompat;
.super Ljava/lang/Object;
.source "PinnedPositionsCompat.java"


# direct methods
.method public static undemote(Landroid/content/ContentResolver;J)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {p0, p1, p2}, Landroid/provider/ContactsContract$PinnedPositions;->undemote(Landroid/content/ContentResolver;J)V

    goto :goto_0

    .line 49
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 50
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v1, "undemote"

    .line 49
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :goto_0
    return-void
.end method

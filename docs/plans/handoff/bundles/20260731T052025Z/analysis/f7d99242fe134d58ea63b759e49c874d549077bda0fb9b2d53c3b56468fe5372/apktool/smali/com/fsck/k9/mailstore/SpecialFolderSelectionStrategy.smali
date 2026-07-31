.class public final Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static selectSpecialFolder(Ljava/util/List;Lnet/thunderbird/feature/mail/folder/api/FolderType;)Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 17
    .line 18
    iget-object v1, v1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 19
    .line 20
    if-ne v1, p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    check-cast v0, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 25
    .line 26
    return-object v0
.end method

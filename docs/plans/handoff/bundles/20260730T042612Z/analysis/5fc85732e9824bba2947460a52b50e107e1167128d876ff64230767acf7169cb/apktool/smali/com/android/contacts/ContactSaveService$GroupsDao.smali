.class public interface abstract Lcom/android/contacts/ContactSaveService$GroupsDao;
.super Ljava/lang/Object;
.source "ContactSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GroupsDao"
.end annotation


# virtual methods
.method public abstract captureDeletionUndoData(Landroid/net/Uri;)Landroid/os/Bundle;
.end method

.method public abstract create(Ljava/lang/String;Lcom/android/contacts/model/account/AccountWithDataSet;)Landroid/net/Uri;
.end method

.method public abstract delete(Landroid/net/Uri;)I
.end method

.method public abstract undoDeletion(Landroid/os/Bundle;)Landroid/net/Uri;
.end method

.class Lcom/android/contacts/activities/AttachPhotoActivity$3;
.super Ljava/lang/Object;
.source "AttachPhotoActivity.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/AttachPhotoActivity;->loadContact(Landroid/net/Uri;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener<",
        "Lcom/android/contacts/model/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/contacts/activities/AttachPhotoActivity$Listener;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/AttachPhotoActivity;Lcom/android/contacts/activities/AttachPhotoActivity$Listener;)V
    .locals 0

    .line 252
    iput-object p2, p0, Lcom/android/contacts/activities/AttachPhotoActivity$3;->val$listener:Lcom/android/contacts/activities/AttachPhotoActivity$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/contacts/model/Contact;",
            ">;",
            "Lcom/android/contacts/model/Contact;",
            ")V"
        }
    .end annotation

    .line 257
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Loader;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 260
    invoke-static {}, Lcom/android/contacts/activities/AttachPhotoActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error resetting loader"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/activities/AttachPhotoActivity$3;->val$listener:Lcom/android/contacts/activities/AttachPhotoActivity$Listener;

    invoke-interface {p1, p2}, Lcom/android/contacts/activities/AttachPhotoActivity$Listener;->onContactLoaded(Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 252
    check-cast p2, Lcom/android/contacts/model/Contact;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/activities/AttachPhotoActivity$3;->onLoadComplete(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V

    return-void
.end method

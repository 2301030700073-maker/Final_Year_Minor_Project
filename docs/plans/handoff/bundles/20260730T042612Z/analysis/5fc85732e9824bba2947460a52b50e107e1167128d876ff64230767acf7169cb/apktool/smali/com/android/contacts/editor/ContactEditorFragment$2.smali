.class Lcom/android/contacts/editor/ContactEditorFragment$2;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/contacts/model/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field protected mLoaderStartTime:J

.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation

    .line 397
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->mLoaderStartTime:J

    .line 398
    new-instance p1, Lcom/android/contacts/model/ContactLoader;

    iget-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v0, p2, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object p2, p2, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, v1, v1}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V
    .locals 6
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

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string p1, "ContactEditor"

    const/4 v2, 0x2

    .line 406
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time needed for loading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->mLoaderStartTime:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p2, "No contact found. Closing activity"

    .line 412
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 p2, 0x3

    iput p2, p1, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 414
    iget-object p1, p1, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onContactNotFound()V

    :cond_1
    return-void

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 419
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 420
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 421
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$2;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v3, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$000(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/Contact;)V

    .line 422
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 423
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 424
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time needed for setting UI: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 391
    check-cast p2, Lcom/android/contacts/model/Contact;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$2;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/contacts/model/Contact;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

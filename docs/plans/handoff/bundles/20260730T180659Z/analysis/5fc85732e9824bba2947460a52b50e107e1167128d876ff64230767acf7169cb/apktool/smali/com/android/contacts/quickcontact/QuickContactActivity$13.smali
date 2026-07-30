.class Lcom/android/contacts/quickcontact/QuickContactActivity$13;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
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
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .line 2064
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
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

    .line 2109
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "QuickContact"

    const-string p2, "Lookup uri wasn\'t initialized. Loader was started too early"

    .line 2110
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_0
    new-instance p1, Lcom/android/contacts/model/ContactLoader;

    iget-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZ)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V
    .locals 4
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

    const-string v0, "onLoadFinished()"

    .line 2072
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2075
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2103
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 2078
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->isError()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v1, 0x7f100166

    const-string v2, "QuickContact"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2081
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to load contact: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/contacts/model/ContactLoader;

    invoke-virtual {p1}, Lcom/android/contacts/model/ContactLoader;->getLookupUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 2083
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2084
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2103
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 2087
    :cond_1
    :try_start_3
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->isNotFound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2088
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No contact found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/contacts/model/ContactLoader;

    invoke-virtual {p1}, Lcom/android/contacts/model/ContactLoader;->getLookupUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 2090
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2091
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2103
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 2095
    :cond_2
    :try_start_4
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 2096
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p1, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3002(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 2097
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    .line 2098
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    .line 2097
    invoke-static {p1, v0}, Lcom/android/contacts/DynamicShortcuts;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    .line 2100
    :cond_3
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3100(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/model/Contact;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2103
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2104
    throw p1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 2064
    check-cast p2, Lcom/android/contacts/model/Contact;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/contacts/model/Contact;",
            ">;)V"
        }
    .end annotation

    .line 2067
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2002(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/model/Contact;

    return-void
.end method

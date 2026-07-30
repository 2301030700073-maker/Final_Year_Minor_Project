.class Lcom/android/contacts/quickcontact/QuickContactActivity$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "QuickContact"

    if-eqz p1, :cond_4

    .line 359
    instance-of v1, p1, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 363
    :cond_0
    check-cast p1, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;

    .line 364
    invoke-virtual {p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 365
    invoke-virtual {p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->getId()I

    move-result p1

    const/4 v2, -0x2

    if-ne p1, v2, :cond_1

    .line 368
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    return-void

    .line 373
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 374
    invoke-static {}, Lcom/android/contacts/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/interactions/TouchPointManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/contacts/interactions/TouchPointManager;->hasValidPoint()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 375
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 377
    invoke-static {}, Lcom/android/contacts/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/interactions/TouchPointManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/interactions/TouchPointManager;->getPoint()Landroid/graphics/Point;

    move-result-object v2

    const-string v3, "touchPoint"

    .line 376
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    .line 378
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 382
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$102(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    const p1, 0x7f1001a5

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "action_type"

    .line 384
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "third_party_action"

    .line 386
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 387
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;)I

    move-result v6

    invoke-static {v5, v6, v2, v3, v4}, Lcom/android/contacts/logging/Logger;->logQuickContactEvent(Ljava/lang/String;IIILjava/lang/String;)V

    const-string v3, "com.google.android.apps.tachyon.action.CALL"

    .line 391
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 392
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v3, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    const/high16 v3, 0x10000000

    .line 394
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v3, v1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityInAppIfPossible(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 405
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 399
    :catch_1
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v3, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickContacts does not have permission to launch "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p1, "EntryTag was not used correctly"

    .line 360
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

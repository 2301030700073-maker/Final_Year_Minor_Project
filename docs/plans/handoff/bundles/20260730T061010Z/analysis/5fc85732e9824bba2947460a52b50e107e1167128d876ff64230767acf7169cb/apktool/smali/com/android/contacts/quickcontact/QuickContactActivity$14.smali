.class Lcom/android/contacts/quickcontact/QuickContactActivity$14;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/contacts/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->createLauncherShortcutWithContact()V
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

    .line 2256
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 2262
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2263
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "android.intent.extra.shortcut.NAME"

    .line 2267
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2269
    iget-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const p2, 0x7f1000c5

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2270
    :cond_0
    iget-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v1, 0x7f1000c4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {p2, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2272
    :goto_0
    iget-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2273
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

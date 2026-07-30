.class Lcom/android/contacts/DynamicShortcuts$ShortcutUpdateTask;
.super Landroid/os/AsyncTask;
.source "DynamicShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/DynamicShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mDynamicShortcuts:Lcom/android/contacts/DynamicShortcuts;


# direct methods
.method public constructor <init>(Lcom/android/contacts/DynamicShortcuts;)V
    .locals 0

    .line 557
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 558
    iput-object p1, p0, Lcom/android/contacts/DynamicShortcuts$ShortcutUpdateTask;->mDynamicShortcuts:Lcom/android/contacts/DynamicShortcuts;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 554
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/DynamicShortcuts$ShortcutUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 563
    iget-object p1, p0, Lcom/android/contacts/DynamicShortcuts$ShortcutUpdateTask;->mDynamicShortcuts:Lcom/android/contacts/DynamicShortcuts;

    invoke-virtual {p1}, Lcom/android/contacts/DynamicShortcuts;->refresh()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 554
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/DynamicShortcuts$ShortcutUpdateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    const-string p1, "DynamicShortcuts"

    const/4 v0, 0x3

    .line 569
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ShorcutUpdateTask.onPostExecute"

    .line 570
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/DynamicShortcuts$ShortcutUpdateTask;->mDynamicShortcuts:Lcom/android/contacts/DynamicShortcuts;

    invoke-virtual {p1}, Lcom/android/contacts/DynamicShortcuts;->scheduleUpdateJob()V

    return-void
.end method

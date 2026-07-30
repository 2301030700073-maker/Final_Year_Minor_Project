.class Lcom/android/contacts/DynamicShortcuts$1;
.super Lcom/android/contacts/DynamicShortcuts$ShortcutUpdateTask;
.source "DynamicShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/DynamicShortcuts;->updateFromJob(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$service:Landroid/app/job/JobService;


# direct methods
.method constructor <init>(Lcom/android/contacts/DynamicShortcuts;Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 530
    iput-object p2, p0, Lcom/android/contacts/DynamicShortcuts$1;->val$service:Landroid/app/job/JobService;

    iput-object p3, p0, Lcom/android/contacts/DynamicShortcuts$1;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p1}, Lcom/android/contacts/DynamicShortcuts$ShortcutUpdateTask;-><init>(Lcom/android/contacts/DynamicShortcuts;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 530
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/DynamicShortcuts$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 534
    invoke-super {p0, p1}, Lcom/android/contacts/DynamicShortcuts$ShortcutUpdateTask;->onPostExecute(Ljava/lang/Void;)V

    .line 535
    iget-object p1, p0, Lcom/android/contacts/DynamicShortcuts$1;->val$service:Landroid/app/job/JobService;

    iget-object v0, p0, Lcom/android/contacts/DynamicShortcuts$1;->val$jobParams:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

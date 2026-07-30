.class Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$SaveServiceResultListener;
.super Landroid/content/BroadcastReceiver;
.source "DisplayOptionsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveServiceResultListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$SaveServiceResultListener;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;)V
    .locals 0

    .line 417
    invoke-direct {p0, p1}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$SaveServiceResultListener;-><init>(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "requestedTime"

    .line 421
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "resultCode"

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, -0x1

    const-string v2, "count"

    .line 430
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-lez p2, :cond_1

    .line 432
    iget-object p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$SaveServiceResultListener;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-static {p1}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->access$600(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v2, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$SaveServiceResultListener;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0005

    new-array v1, v1, [Ljava/lang/Object;

    .line 433
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 432
    invoke-virtual {v2, v3, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 434
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 436
    iget-object p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$SaveServiceResultListener;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-static {p1}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->access$600(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    const p2, 0x7f10020c

    invoke-static {p1, p2, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 437
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_2
    :goto_0
    return-void
.end method

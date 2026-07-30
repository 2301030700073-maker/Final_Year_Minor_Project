.class public final Lcom/android/contacts/group/GroupNameEditDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupNameEditDialogFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/DialogFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

.field private mExistingGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupId:J

.field private mGroupName:Ljava/lang/String;

.field private mGroupNameEditText:Landroid/widget/EditText;

.field private mGroupNameTextLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mIsInsert:Z

.field private mListener:Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mExistingGroups:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/GroupNameEditDialogFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->hideInputMethod()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->getListener()Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Landroid/widget/EditText;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mGroupNameEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/contacts/group/GroupNameEditDialogFragment;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mGroupNameEditText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mGroupNameTextLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/contacts/group/GroupNameEditDialogFragment;Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mGroupNameTextLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mGroupName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupNameEditDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->showInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupNameEditDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->getGroupName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupNameEditDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->maybePersistCurrentGroupName(Landroid/view/View;)V

    return-void
.end method

.method private getGroupName()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mGroupNameEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mGroupNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private getListener()Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mListener:Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

    if-eqz v0, :cond_0

    return-object v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

    return-object v0

    .line 345
    :cond_1
    sget-object v0, Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;->None:Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

    return-object v0
.end method

.method private getSelection()Ljava/lang/String;
    .locals 3

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_name"

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "account_type"

    .line 357
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deleted"

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v2, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v2, v2, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, " AND "

    .line 360
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data_set"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectionArgs()[Ljava/lang/String;
    .locals 5

    .line 366
    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v0, v0, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 367
    :goto_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 368
    iget-object v3, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v4, v3, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    aput-object v4, v0, v2

    const/4 v2, 0x1

    .line 369
    iget-object v4, v3, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    aput-object v4, v0, v2

    const/4 v2, 0x2

    const-string v4, "0"

    .line 370
    aput-object v4, v0, v2

    .line 371
    iget-object v2, v3, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 372
    aput-object v2, v0, v1

    :cond_1
    return-object v0
.end method

.method private hasNameChanged()Z
    .locals 3

    .line 226
    invoke-direct {p0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "groupName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mIsInsert:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hideInputMethod()V
    .locals 3

    .line 332
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mGroupNameEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private maybePersistCurrentGroupName(Landroid/view/View;)V
    .locals 7

    .line 232
    invoke-direct {p0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->hasNameChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    return-void

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->getGroupName()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v4, v0

    .line 246
    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mExistingGroups:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mGroupNameTextLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f10013a

    .line 248
    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 252
    :cond_2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "callbackAction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 254
    iget-boolean p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mIsInsert:Z

    if-eqz p1, :cond_3

    .line 255
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    const/4 p1, 0x0

    .line 256
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v3, v4

    move-object v4, p1

    .line 255
    invoke-static/range {v1 .. v6}, Lcom/android/contacts/ContactSaveService;->createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 258
    :cond_3
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mGroupId:J

    .line 259
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 258
    invoke-static/range {v1 .. v6}, Lcom/android/contacts/ContactSaveService;->createGroupRenameIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 261
    :goto_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/contacts/ContactSaveService;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 262
    invoke-direct {p0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->getListener()Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mGroupName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;->onGroupNameEditCompleted(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private static newInstance(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/String;JLjava/lang/String;)Lcom/android/contacts/group/GroupNameEditDialogFragment;
    .locals 3

    if-eqz p0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "isInsert"

    .line 109
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "groupId"

    .line 110
    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "groupName"

    .line 111
    invoke-virtual {v1, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "account"

    .line 112
    invoke-virtual {v1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "callbackAction"

    .line 113
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;

    invoke-direct {p0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;-><init>()V

    .line 116
    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0

    .line 105
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid account"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newInstanceForCreation(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/String;)Lcom/android/contacts/group/GroupNameEditDialogFragment;
    .locals 3

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 94
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->newInstance(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/String;JLjava/lang/String;)Lcom/android/contacts/group/GroupNameEditDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstanceForUpdate(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/String;JLjava/lang/String;)Lcom/android/contacts/group/GroupNameEditDialogFragment;
    .locals 0

    .line 99
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->newInstance(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/String;JLjava/lang/String;)Lcom/android/contacts/group/GroupNameEditDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 2

    .line 321
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 327
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 268
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 269
    invoke-direct {p0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->getListener()Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;->onGroupNameEditCancelled()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 122
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const v1, 0x7f1100ed

    .line 123
    invoke-virtual {p0, v0, v1}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 124
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "groupName"

    if-nez p1, :cond_0

    .line 126
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mGroupName:Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mGroupName:Ljava/lang/String;

    :goto_0
    const-wide/16 v2, -0x1

    const-string p1, "groupId"

    .line 131
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mGroupId:J

    const/4 p1, 0x1

    const-string v2, "isInsert"

    .line 132
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mIsInsert:Z

    .line 133
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountWithDataSet;

    iput-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 136
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 142
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0c0047

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 143
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mIsInsert:Z

    if-eqz v0, :cond_0

    const v0, 0x7f100145

    goto :goto_0

    :cond_0
    const v0, 0x7f100146

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 146
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTheme()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 147
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f0c0067

    .line 148
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    new-instance v2, Lcom/android/contacts/group/GroupNameEditDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/group/GroupNameEditDialogFragment$1;-><init>(Lcom/android/contacts/group/GroupNameEditDialogFragment;)V

    .line 149
    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 159
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 162
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 165
    new-instance v0, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/group/GroupNameEditDialogFragment$2;-><init>(Lcom/android/contacts/group/GroupNameEditDialogFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance p1, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    const-string p2, "title"

    const-string v0, "system_id"

    const-string v3, "account_type"

    const-string v4, "summ_count"

    const-string v5, "group_is_read_only"

    filled-new-array {p2, v0, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-direct {p0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->getSelection()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 289
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mExistingGroups:Ljava/util/Set;

    .line 290
    new-instance p1, Lcom/android/contacts/group/GroupUtil$GroupsProjection;

    invoke-direct {p1, p2}, Lcom/android/contacts/group/GroupUtil$GroupsProjection;-><init>(Landroid/database/Cursor;)V

    const/4 v0, -0x1

    .line 295
    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 296
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    invoke-virtual {p1, p2}, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->getTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 309
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->isEmptyFFCGroup(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mExistingGroups:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 274
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 275
    invoke-direct {p0}, Lcom/android/contacts/group/GroupNameEditDialogFragment;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "groupName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/contacts/group/GroupNameEditDialogFragment;->mListener:Lcom/android/contacts/group/GroupNameEditDialogFragment$Listener;

    return-void
.end method

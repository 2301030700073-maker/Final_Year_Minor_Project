.class public Lcom/android/contacts/editor/PickRawContactDialogFragment;
.super Landroid/app/DialogFragment;
.source "PickRawContactDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;,
        Lcom/android/contacts/editor/PickRawContactDialogFragment$PickRawContactListener;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mShouldFinishActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment;->mShouldFinishActivity:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/editor/PickRawContactDialogFragment;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment;->mShouldFinishActivity:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/PickRawContactDialogFragment;)Landroid/widget/ListAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method private finishActivity()V
    .locals 1

    .line 242
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static getInstance(Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;)Lcom/android/contacts/editor/PickRawContactDialogFragment;
    .locals 3

    .line 156
    new-instance v0, Lcom/android/contacts/editor/PickRawContactDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/PickRawContactDialogFragment;-><init>()V

    .line 157
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "rawContactsMetadata"

    .line 158
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 238
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 165
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/editor/PickRawContactDialogFragment$PickRawContactListener;

    if-eqz v0, :cond_5

    .line 169
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "rawContactsMetadata"

    .line 174
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    if-eqz v0, :cond_3

    .line 179
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v2, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/editor/PickRawContactDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;-><init>(Lcom/android/contacts/editor/PickRawContactDialogFragment;Landroid/content/Context;Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;)V

    iput-object v2, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 181
    iget-boolean v2, v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->showReadOnly:Z

    if-eqz v2, :cond_0

    const v2, 0x7f1000a9

    .line 182
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 184
    iget-boolean v2, v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->isUserProfile:Z

    if-nez v2, :cond_1

    const v2, 0x7f1000a7

    .line 185
    new-instance v3, Lcom/android/contacts/editor/PickRawContactDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/editor/PickRawContactDialogFragment$1;-><init>(Lcom/android/contacts/editor/PickRawContactDialogFragment;Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f1000b1

    .line 198
    new-instance v2, Lcom/android/contacts/editor/PickRawContactDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/PickRawContactDialogFragment$2;-><init>(Lcom/android/contacts/editor/PickRawContactDialogFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const v0, 0x7f1000aa

    .line 211
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 213
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v2, Lcom/android/contacts/editor/PickRawContactDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/PickRawContactDialogFragment$3;-><init>(Lcom/android/contacts/editor/PickRawContactDialogFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 220
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-nez p1, :cond_2

    .line 222
    iget-object p1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 223
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    .line 222
    invoke-static {v0, p1}, Lcom/android/contacts/logging/Logger;->logEditorEvent(II)V

    .line 225
    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 176
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Dialog created with null RawContactsMetadata"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Dialog created with no arguments"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Host activity doesn\'t implement PickRawContactListener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 231
    iget-boolean p1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment;->mShouldFinishActivity:Z

    if-eqz p1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/android/contacts/editor/PickRawContactDialogFragment;->finishActivity()V

    :cond_0
    return-void
.end method

.class public Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;
.super Landroid/app/DialogFragment;
.source "EnableGlobalSyncDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mFilter:Lcom/android/contacts/list/ContactListFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;)Lcom/android/contacts/list/ContactListFilter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object p0
.end method

.method public static show(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 2

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "filter"

    .line 50
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    new-instance p1, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;

    invoke-direct {p1}, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;-><init>()V

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "globalSync"

    invoke-virtual {p1, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/ContactListFilter;

    iput-object p1, p0, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 67
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$Listener;

    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10023f

    .line 69
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f10023d

    .line 70
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$1;-><init>(Lcom/android/contacts/list/EnableGlobalSyncDialogFragment;Lcom/android/contacts/list/EnableGlobalSyncDialogFragment$Listener;)V

    const p1, 0x7f10023e

    .line 71
    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 81
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

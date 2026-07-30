.class public Lcom/android/contacts/interactions/ImportDialogFragment;
.super Landroid/app/DialogFragment;
.source "ImportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;
    }
.end annotation


# static fields
.field private static sBidiFormatter:Landroidx/core/text/BidiFormatter;


# instance fields
.field private mAccountsFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSimDao:Lcom/android/contacts/database/SimContactDao;

.field private mSimOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/interactions/ImportDialogFragment;->sBidiFormatter:Landroidx/core/text/BidiFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/android/contacts/interactions/ImportDialogFragment;->mSimOnly:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/interactions/ImportDialogFragment;Lcom/android/contacts/model/SimCard;)I
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/ImportDialogFragment;->getSimContactCount(Lcom/android/contacts/model/SimCard;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100()Landroidx/core/text/BidiFormatter;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/contacts/interactions/ImportDialogFragment;->sBidiFormatter:Landroidx/core/text/BidiFormatter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/interactions/ImportDialogFragment;Lcom/android/contacts/model/SimCard;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/ImportDialogFragment;->handleSimImportRequest(Lcom/android/contacts/model/SimCard;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/interactions/ImportDialogFragment;II)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/interactions/ImportDialogFragment;->handleImportRequest(II)V

    return-void
.end method

.method private addItems(Landroid/widget/ArrayAdapter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;",
            ">;)V"
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/interactions/ImportDialogFragment;->mSimOnly:Z

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;

    const v1, 0x7f10015c

    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportDialogFragment;->mSimDao:Lcom/android/contacts/database/SimContactDao;

    invoke-virtual {v0}, Lcom/android/contacts/database/SimContactDao;->getSimCards()Ljava/util/List;

    move-result-object v0

    .line 242
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f10015a

    if-ne v1, v3, :cond_1

    .line 243
    new-instance v1, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;

    invoke-virtual {p0, v4}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/SimCard;

    invoke-direct {v1, v3, v4, v0}, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;-><init>(Ljava/lang/CharSequence;ILcom/android/contacts/model/SimCard;)V

    .line 243
    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void

    .line 247
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 248
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/SimCard;

    .line 249
    new-instance v3, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/interactions/ImportDialogFragment;->getSimDescription(Lcom/android/contacts/model/SimCard;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v5, v4, v1}, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;-><init>(Ljava/lang/CharSequence;ILcom/android/contacts/model/SimCard;)V

    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getSimContactCount(Lcom/android/contacts/model/SimCard;)I
    .locals 4

    .line 224
    invoke-virtual {p1}, Lcom/android/contacts/model/SimCard;->getContacts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/android/contacts/model/SimCard;->getContacts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 227
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    .line 231
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simContactCount_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/contacts/model/SimCard;->getSimId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private getSimDescription(Lcom/android/contacts/model/SimCard;I)Ljava/lang/CharSequence;
    .locals 3

    .line 289
    invoke-virtual {p1}, Lcom/android/contacts/model/SimCard;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f10015b

    if-eqz p1, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 291
    invoke-virtual {p0, v2, p2}, Landroid/app/DialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 293
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-virtual {p0, v2, p1}, Landroid/app/DialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleImportRequest(II)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportDialogFragment;->mAccountsFuture:Ljava/util/concurrent/Future;

    .line 266
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 265
    invoke-static {v0}, Lcom/android/contacts/model/account/AccountInfo;->extractAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 275
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "resourceId"

    .line 276
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "subscriptionId"

    .line 277
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const p2, 0x7f1000e0

    sget-object v1, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->CONTACTS_WRITABLE:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    .line 278
    invoke-static {p1, p2, v1, v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;ILcom/android/contacts/model/AccountTypeManager$AccountFilter;Landroid/os/Bundle;)V

    goto :goto_2

    .line 282
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 283
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 284
    :goto_0
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isMSIMCompatible()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    .line 282
    :goto_1
    invoke-static {v3, p1, v0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/app/Activity;ILcom/android/contacts/model/account/AccountWithDataSet;I)V

    :goto_2
    return-void
.end method

.method private handleSimImportRequest(Lcom/android/contacts/model/SimCard;)V
    .locals 3

    .line 254
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/contacts/activities/SimImportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    invoke-virtual {p1}, Lcom/android/contacts/model/SimCard;->getSubscriptionId()I

    move-result p1

    const-string v1, "extraSubscriptionId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 254
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2

    .line 78
    new-instance v0, Lcom/android/contacts/interactions/ImportDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/interactions/ImportDialogFragment;-><init>()V

    const-string v1, "ImportDialogFragment"

    .line 79
    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 121
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f1100ec

    .line 103
    invoke-virtual {p0, p1, v0}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 105
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extraSimOnly"

    .line 106
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/android/contacts/interactions/ImportDialogFragment;->mSimOnly:Z

    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/database/SimContactDao;->create(Landroid/content/Context;)Lcom/android/contacts/database/SimContactDao;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/interactions/ImportDialogFragment;->mSimDao:Lcom/android/contacts/database/SimContactDao;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 132
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 135
    new-instance v0, Lcom/android/contacts/interactions/ImportDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c009f

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/contacts/interactions/ImportDialogFragment$1;-><init>(Lcom/android/contacts/interactions/ImportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 191
    invoke-direct {p0, v0}, Lcom/android/contacts/interactions/ImportDialogFragment;->addItems(Landroid/widget/ArrayAdapter;)V

    .line 193
    new-instance p1, Lcom/android/contacts/interactions/ImportDialogFragment$2;

    invoke-direct {p1, p0, v0}, Lcom/android/contacts/interactions/ImportDialogFragment$2;-><init>(Lcom/android/contacts/interactions/ImportDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 210
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTheme()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f1000df

    .line 211
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 212
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 213
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const p1, 0x7f1001c6

    .line 215
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 217
    invoke-virtual {v1, v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 112
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 115
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/android/contacts/model/AccountTypeManager;->writableFilter()Lcom/google/common/base/Predicate;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->filterAccountsAsync(Lcom/google/common/base/Predicate;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/ImportDialogFragment;->mAccountsFuture:Ljava/util/concurrent/Future;

    return-void
.end method

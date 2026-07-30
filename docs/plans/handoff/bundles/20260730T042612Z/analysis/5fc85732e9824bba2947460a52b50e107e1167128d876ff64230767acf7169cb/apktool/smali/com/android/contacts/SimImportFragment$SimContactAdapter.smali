.class Lcom/android/contacts/SimImportFragment$SimContactAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimImportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SimImportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimContactAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/contacts/model/SimContact;",
        ">;"
    }
.end annotation


# instance fields
.field private mExistingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            "Ljava/util/Set<",
            "Lcom/android/contacts/model/SimContact;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedAccount:Lcom/android/contacts/model/account/AccountWithDataSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 364
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string v0, "layout_inflater"

    .line 365
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getItemLabel(Lcom/android/contacts/model/SimContact;)Ljava/lang/String;
    .locals 1

    .line 435
    invoke-virtual {p1}, Lcom/android/contacts/model/SimContact;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p1}, Lcom/android/contacts/model/SimContact;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 437
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/SimContact;->hasPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {p1}, Lcom/android/contacts/model/SimContact;->getPhone()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 439
    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/model/SimContact;->hasEmails()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    invoke-virtual {p1}, Lcom/android/contacts/model/SimContact;->getEmails()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public existsInCurrentAccount(I)Z
    .locals 0

    .line 424
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/SimContact;

    invoke-virtual {p0, p1}, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->existsInCurrentAccount(Lcom/android/contacts/model/SimContact;)Z

    move-result p1

    return p1
.end method

.method public existsInCurrentAccount(Lcom/android/contacts/model/SimContact;)Z
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->mSelectedAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->mExistingMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->mExistingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->mSelectedAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->mSelectedAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_1

    .line 372
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/SimContact;

    invoke-virtual {p1}, Lcom/android/contacts/model/SimContact;->getId()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->existsInCurrentAccount(I)Z

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 396
    check-cast p2, Landroid/widget/TextView;

    if-nez p2, :cond_1

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->existsInCurrentAccount(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0c00a6

    goto :goto_0

    :cond_0
    const p2, 0x7f0c00a5

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 403
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/SimContact;

    invoke-direct {p0, p1}, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->getItemLabel(Lcom/android/contacts/model/SimContact;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->mSelectedAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 416
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Lcom/android/contacts/SimImportFragment$LoaderResult;)V
    .locals 1

    .line 409
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 410
    iget-object v0, p1, Lcom/android/contacts/SimImportFragment$LoaderResult;->contacts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 411
    iget-object p1, p1, Lcom/android/contacts/SimImportFragment$LoaderResult;->accountsMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->mExistingMap:Ljava/util/Map;

    return-void
.end method

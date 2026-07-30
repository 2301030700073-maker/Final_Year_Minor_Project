.class public Lcom/android/contacts/util/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;,
        Lcom/android/contacts/util/DialogManager$DialogShowingView;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mUseDialogId2:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "activity must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/android/contacts/util/DialogManager;)Landroid/app/Activity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final isManagedId(I)Z
    .locals 1

    const v0, 0x7f0900b3

    if-eq p0, v0, :cond_1

    const v0, 0x7f0900b4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f0900b3

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    .line 87
    iput-boolean v1, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    goto :goto_0

    :cond_0
    const v1, 0x7f0900b4

    if-ne p1, v1, :cond_5

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    :goto_0
    const-string v1, "view_id"

    .line 93
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 97
    iget-object v2, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 98
    instance-of v2, v1, Lcom/android/contacts/util/DialogManager$DialogShowingView;

    if-nez v2, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    check-cast v1, Lcom/android/contacts/util/DialogManager$DialogShowingView;

    invoke-interface {v1, p2}, Lcom/android/contacts/util/DialogManager$DialogShowingView;->createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_2

    return-object p2

    .line 107
    :cond_2
    new-instance v0, Lcom/android/contacts/util/DialogManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/util/DialogManager$1;-><init>(Lcom/android/contacts/util/DialogManager;I)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p2

    :cond_3
    :goto_1
    return-object v0

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bundle does not contain a ViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-object v0
.end method

.method public showDialogInView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "view_id"

    .line 70
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 76
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    iget-boolean p1, p0, Lcom/android/contacts/util/DialogManager;->mUseDialogId2:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0900b4

    goto :goto_0

    :cond_0
    const p1, 0x7f0900b3

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/util/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    return-void

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "View does not have a proper ViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bundle already contains a view_id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

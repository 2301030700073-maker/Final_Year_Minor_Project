.class public Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/AccountSelectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountSelectedListener"
.end annotation


# instance fields
.field protected final mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivity:Landroid/app/Activity;

.field private final mResId:I

.field private final mSubscriptionId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 78
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/app/Activity;Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;II)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 65
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "AccountSelectionUtil"

    const-string v1, "The size of Account list is 0."

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mActivity:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    .line 70
    iput p3, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    .line 71
    iput p4, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mSubscriptionId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 82
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 83
    iget-object p1, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mActivity:Landroid/app/Activity;

    iget v0, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    iget-object v1, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget v1, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mSubscriptionId:I

    invoke-static {p1, v0, p2, v1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/app/Activity;ILcom/android/contacts/model/account/AccountWithDataSet;I)V

    return-void
.end method

.class public abstract Lcom/android/contacts/activities/AppCompatTransactionSafeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AppCompatTransactionSafeActivity.java"


# instance fields
.field private mIsSafeToCommitTransactions:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public isSafeToCommitTransactions()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/android/contacts/activities/AppCompatTransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/android/contacts/activities/AppCompatTransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/android/contacts/activities/AppCompatTransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/android/contacts/activities/AppCompatTransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/android/contacts/activities/AppCompatTransactionSafeActivity;->mIsSafeToCommitTransactions:Z

    return-void
.end method

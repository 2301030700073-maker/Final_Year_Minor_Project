.class public final Lapp/k9mail/feature/settings/import/ui/AccountViewHolder;
.super Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountDisplayName:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;-><init>(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f090032

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 18
    .line 19
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/AccountViewHolder;->accountDisplayName:Lcom/google/android/material/textview/MaterialTextView;

    .line 20
    .line 21
    return-void
.end method

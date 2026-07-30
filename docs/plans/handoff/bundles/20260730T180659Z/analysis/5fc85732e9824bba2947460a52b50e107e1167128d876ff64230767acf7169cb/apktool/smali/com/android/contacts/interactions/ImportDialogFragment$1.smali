.class Lcom/android/contacts/interactions/ImportDialogFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "ImportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ImportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ImportDialogFragment;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ImportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportDialogFragment$1;->this$0:Lcom/android/contacts/interactions/ImportDialogFragment;

    iput-object p4, p0, Lcom/android/contacts/interactions/ImportDialogFragment$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method getSimSecondaryText(Lcom/android/contacts/model/SimCard;)Ljava/lang/CharSequence;
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportDialogFragment$1;->this$0:Lcom/android/contacts/interactions/ImportDialogFragment;

    invoke-static {v0, p1}, Lcom/android/contacts/interactions/ImportDialogFragment;->access$000(Lcom/android/contacts/interactions/ImportDialogFragment;Lcom/android/contacts/model/SimCard;)I

    move-result v0

    .line 162
    invoke-virtual {p1}, Lcom/android/contacts/model/SimCard;->getFormattedPhone()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/android/contacts/model/SimCard;->getPhone()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 167
    invoke-static {}, Lcom/android/contacts/interactions/ImportDialogFragment;->access$100()Landroidx/core/text/BidiFormatter;

    move-result-object p1

    .line 168
    invoke-static {v1}, Lcom/android/contacts/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 167
    invoke-virtual {p1, v1, v2}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_1
    const/4 p1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    if-eqz v1, :cond_2

    .line 174
    iget-object v3, p0, Lcom/android/contacts/interactions/ImportDialogFragment$1;->this$0:Lcom/android/contacts/interactions/ImportDialogFragment;

    invoke-virtual {v3}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0004

    .line 175
    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    .line 176
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    aput-object v1, v4, p1

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    if-eq v0, v3, :cond_4

    .line 181
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportDialogFragment$1;->this$0:Lcom/android/contacts/interactions/ImportDialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0003

    new-array p1, p1, [Ljava/lang/Object;

    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v2

    .line 182
    invoke-virtual {v1, v3, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object p2, p0, Lcom/android/contacts/interactions/ImportDialogFragment$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c009f

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :goto_0
    const p3, 0x7f090178

    .line 142
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f0901a0

    .line 143
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 144
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;

    const/16 v2, 0x8

    .line 145
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget v3, p1, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;->mChoiceResourceId:I

    const v4, 0x7f10015a

    if-ne v3, v4, :cond_2

    .line 147
    iget-object v3, p1, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;->mSim:Lcom/android/contacts/model/SimCard;

    invoke-virtual {p0, v3}, Lcom/android/contacts/interactions/ImportDialogFragment$1;->getSimSecondaryText(Lcom/android/contacts/model/SimCard;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 148
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    :cond_2
    :goto_1
    iget-object p1, p1, Lcom/android/contacts/interactions/ImportDialogFragment$AdapterEntry;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

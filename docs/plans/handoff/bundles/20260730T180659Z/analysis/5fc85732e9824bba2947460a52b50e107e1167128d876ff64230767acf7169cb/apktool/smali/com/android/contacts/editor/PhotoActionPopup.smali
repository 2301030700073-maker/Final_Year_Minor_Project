.class public Lcom/android/contacts/editor/PhotoActionPopup;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PhotoActionPopup$Listener;,
        Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;
    }
.end annotation


# direct methods
.method public static createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;
    .locals 3

    .line 99
    invoke-static {p0, p3}, Lcom/android/contacts/editor/PhotoActionPopup;->getChoices(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p3

    .line 101
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0c009f

    invoke-direct {v0, p0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 104
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v2, Lcom/android/contacts/editor/PhotoActionPopup$1;

    invoke-direct {v2, p3, p2, v1}, Lcom/android/contacts/editor/PhotoActionPopup$1;-><init>(Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;Landroid/widget/ListPopupWindow;)V

    .line 125
    invoke-virtual {v1, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 126
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p2, 0x1

    .line 128
    invoke-virtual {v1, p2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    const/4 p2, 0x2

    .line 129
    invoke-virtual {v1, p2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0701ac

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-ge p1, p0, :cond_0

    .line 133
    invoke-virtual {v1, p0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    :cond_0
    return-object v1
.end method

.method public static getChoices(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_0

    .line 79
    new-instance v1, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v2, 0x3

    const v3, 0x7f1001ea

    .line 80
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_5

    and-int/lit8 p1, p1, 0x8

    const/4 v1, 0x1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const v2, 0x7f100233

    goto :goto_1

    :cond_2
    const v2, 0x7f100234

    .line 86
    :goto_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_3

    const p1, 0x7f1001d1

    goto :goto_2

    :cond_3
    const p1, 0x7f1001d2

    .line 88
    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isCameraIntentRegistered(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 90
    new-instance p0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_4
    new-instance p0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

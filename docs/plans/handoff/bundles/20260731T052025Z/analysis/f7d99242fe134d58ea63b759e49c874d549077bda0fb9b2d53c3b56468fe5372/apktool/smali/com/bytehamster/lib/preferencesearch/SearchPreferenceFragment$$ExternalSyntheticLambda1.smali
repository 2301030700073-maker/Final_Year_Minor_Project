.class public final synthetic Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment$$ExternalSyntheticLambda1;->f$0:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment$$ExternalSyntheticLambda1;->f$0:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/appcompat/widget/PopupMenu;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-direct {p1, v0, v1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroidx/appcompat/view/SupportMenuInflater;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0e0010

    .line 29
    .line 30
    .line 31
    iget-object v2, p1, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 32
    .line 33
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/SupportMenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/16 v1, 0x12

    .line 39
    .line 40
    invoke-direct {v0, v1, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p1, Landroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textClearHistory:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    const v0, 0x7f090134

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textClearHistory:Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object p0, p1, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1, p1, p1, p1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const-string p0, "MenuPopupHelper cannot be used without an anchor"

    .line 84
    .line 85
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p0, Landroid/widget/EditText;

    .line 94
    .line 95
    const-string p1, ""

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;Landroidx/appcompat/app/AppCompatActivity;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$1;->this$0:Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;

    .line 2
    .line 3
    const p1, 0x7f0c056b

    .line 4
    .line 5
    .line 6
    const v0, 0x1020014

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$1;->this$0:Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->openPgpProviderList:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    const p3, 0x1020007

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Landroid/widget/ImageView;

    .line 25
    .line 26
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    const p0, 0x1020014

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroid/widget/CheckedTextView;

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-object p2
.end method

.class public final synthetic Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

.field public final synthetic f$4:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lorg/jsoup/parser/ParseError;Landroidx/recyclerview/widget/RecyclerView;ILcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;Landroidx/preference/Preference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda1;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    iput p3, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda1;->f$2:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda1;->f$3:Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda1;->f$4:Landroidx/preference/Preference;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda1;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget v1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda1;->f$2:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda1;->f$3:Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lorg/jsoup/parser/ParseError;->getColorFromAttr(Landroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const v3, 0xffffff

    .line 28
    .line 29
    .line 30
    and-int/2addr v1, v3

    .line 31
    const/high16 v3, 0x33000000

    .line 32
    .line 33
    or-int/2addr v1, v3

    .line 34
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Landroid/os/Handler;

    .line 38
    .line 39
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 43
    .line 44
    const/16 v3, 0xa

    .line 45
    .line 46
    invoke-direct {v1, v3, v0, v2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v2, 0x3e8

    .line 50
    .line 51
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda1;->f$4:Landroidx/preference/Preference;

    .line 56
    .line 57
    invoke-static {v1, p0}, Lorg/jsoup/parser/ParseError;->highlightFallback(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;Landroidx/preference/Preference;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

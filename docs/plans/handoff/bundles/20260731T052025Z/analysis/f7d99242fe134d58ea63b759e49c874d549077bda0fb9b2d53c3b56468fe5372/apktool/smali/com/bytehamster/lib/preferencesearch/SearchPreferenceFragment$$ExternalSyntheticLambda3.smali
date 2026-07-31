.class public final synthetic Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment$$ExternalSyntheticLambda3;->f$0:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment$$ExternalSyntheticLambda3;->f$0:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->hideKeyboard$2()V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

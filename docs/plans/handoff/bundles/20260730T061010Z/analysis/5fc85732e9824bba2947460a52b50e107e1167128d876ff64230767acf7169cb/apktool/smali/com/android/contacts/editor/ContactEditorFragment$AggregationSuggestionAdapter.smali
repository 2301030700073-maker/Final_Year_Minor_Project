.class final Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AggregationSuggestionAdapter"
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

.field private final mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/contacts/editor/AggregationSuggestionView$Listener;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/contacts/editor/AggregationSuggestionView$Listener;",
            "Ljava/util/List<",
            "Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;",
            ">;)V"
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 284
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 285
    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    .line 286
    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mSuggestions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    .line 292
    iget-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c001f

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/editor/AggregationSuggestionView;

    .line 295
    iget-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    invoke-virtual {p2, p3}, Lcom/android/contacts/editor/AggregationSuggestionView;->setListener(Lcom/android/contacts/editor/AggregationSuggestionView$Listener;)V

    .line 296
    invoke-virtual {p2, p1}, Lcom/android/contacts/editor/AggregationSuggestionView;->bindSuggestion(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;)V

    return-object p2
.end method

.class public Lcom/android/contacts/editor/AggregationSuggestionView;
.super Landroid/widget/LinearLayout;
.source "AggregationSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/AggregationSuggestionView$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

.field private mSuggestion:Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bindSuggestion(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;)V
    .locals 7

    .line 62
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mSuggestion:Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    .line 64
    new-instance v6, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    iget-object v0, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->name:Ljava/lang/String;

    iget-wide v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContactId:J

    .line 65
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const v0, 0x7f090054

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    .line 68
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photoId:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    const v0, 0x7f090053

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090052

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 p1, 0x3

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 88
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public handleItemClickEvent()Z
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mSuggestion:Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->contactLookupKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mSuggestion:Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    iget-wide v2, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->contactId:J

    iget-object v1, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->contactLookupKey:Ljava/lang/String;

    .line 101
    invoke-static {v2, v3, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mSuggestion:Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    iget-wide v2, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContactId:J

    .line 100
    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/editor/AggregationSuggestionView$Listener;->onEditAction(Landroid/net/Uri;J)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public setListener(Lcom/android/contacts/editor/AggregationSuggestionView$Listener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    return-void
.end method

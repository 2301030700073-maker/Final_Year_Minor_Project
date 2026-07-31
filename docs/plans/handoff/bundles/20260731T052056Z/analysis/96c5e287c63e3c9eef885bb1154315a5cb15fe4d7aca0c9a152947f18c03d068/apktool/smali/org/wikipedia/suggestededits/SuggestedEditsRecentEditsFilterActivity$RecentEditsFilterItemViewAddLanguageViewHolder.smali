.class public final Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterItemViewAddLanguageViewHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView$Callback;


# instance fields
.field public final filterItemView:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterItemViewAddLanguageViewHolder;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterItemViewAddLanguageViewHolder;->filterItemView:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$Filter;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterItemViewAddLanguageViewHolder;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;->appLanguagesPreFilterList:Ljava/util/ArrayList;

    .line 4
    .line 5
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 6
    .line 7
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;->languageChooserLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 23
    .line 24
    sget v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;->$r8$clinit:I

    .line 25
    .line 26
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS_RECENT_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 27
    .line 28
    invoke-static {p0, v0}, Lokhttp3/Cache$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, p0, v0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

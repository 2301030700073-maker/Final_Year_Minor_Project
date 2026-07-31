.class public final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;
.super Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 8
    .line 9
    sget-object p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    aget p0, p1, p0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    if-eq p0, p1, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p0, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    if-eq p0, v0, :cond_0

    .line 25
    .line 26
    new-instance p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 27
    .line 28
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;-><init>()V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    new-instance p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 33
    .line 34
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 38
    .line 39
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lkotlin/Pair;

    .line 48
    .line 49
    const-string v2, "lang"

    .line 50
    .line 51
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-array p1, p1, [Lkotlin/Pair;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    aput-object v1, p1, v0

    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_1
    new-instance p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 68
    .line 69
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;-><init>()V

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_2
    new-instance p0, Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;

    .line 74
    .line 75
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;-><init>()V

    .line 76
    .line 77
    .line 78
    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    const p0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    return p0
.end method

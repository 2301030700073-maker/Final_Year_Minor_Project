.class public final synthetic Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

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
    .locals 9

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-boolean p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showLocalSuggestions:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showRemoteSuggestions:Z

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 19
    .line 20
    iget-object p1, p1, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorPanelRoot:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionsPanelVisible:Z

    .line 31
    .line 32
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 33
    .line 34
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderActionButton:Ljava/lang/Object;

    .line 35
    .line 36
    move-object v0, p1

    .line 37
    check-cast v0, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/16 v8, 0x18

    .line 41
    .line 42
    const-wide/16 v2, 0xc8

    .line 43
    .line 44
    sget-object v4, Lorg/schabi/newpipe/ktx/AnimationType;->LIGHT_SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 45
    .line 46
    const-wide/16 v5, 0x0

    .line 47
    .line 48
    invoke-static/range {v0 .. v8}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 62
    .line 63
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 64
    .line 65
    invoke-static {p1, p0}, Lorg/jsoup/Jsoup;->showKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void

    .line 69
    :pswitch_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 70
    .line 71
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderNewpipeTitle:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->search(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 84
    .line 85
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_1
    sget p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$clinit:I

    .line 92
    .line 93
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSearchEditString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {p0}, Landroidx/sqlite/SQLite;->gotoMainFragment(Landroidx/fragment/app/FragmentManager;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 112
    .line 113
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderNewpipeTitle:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 121
    .line 122
    const-string v0, ""

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionListAdapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 128
    .line 129
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 134
    .line 135
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 136
    .line 137
    invoke-static {p1, p0}, Lorg/jsoup/Jsoup;->showKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 138
    .line 139
    .line 140
    :goto_1
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

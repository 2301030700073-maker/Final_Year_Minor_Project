.class public final Lorg/wikipedia/usercontrib/UserContribFilterActivity$AddLanguageViewHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/usercontrib/UserContribFilterItemView$Callback;


# instance fields
.field public final filterItemView:Lorg/wikipedia/usercontrib/UserContribFilterItemView;

.field public final synthetic this$0:Lorg/wikipedia/usercontrib/UserContribFilterActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/usercontrib/UserContribFilterActivity;Lorg/wikipedia/usercontrib/UserContribFilterItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribFilterActivity$AddLanguageViewHolder;->this$0:Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/usercontrib/UserContribFilterActivity$AddLanguageViewHolder;->filterItemView:Lorg/wikipedia/usercontrib/UserContribFilterItemView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSelected(Lorg/wikipedia/usercontrib/UserContribFilterActivity$Item;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribFilterActivity$AddLanguageViewHolder;->this$0:Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserContribFilterActivity;->langUpdateLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 4
    .line 5
    sget v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;->$r8$clinit:I

    .line 6
    .line 7
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->USER_CONTRIB_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 8
    .line 9
    invoke-static {p0, v0}, Lokhttp3/Cache$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p0, v0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

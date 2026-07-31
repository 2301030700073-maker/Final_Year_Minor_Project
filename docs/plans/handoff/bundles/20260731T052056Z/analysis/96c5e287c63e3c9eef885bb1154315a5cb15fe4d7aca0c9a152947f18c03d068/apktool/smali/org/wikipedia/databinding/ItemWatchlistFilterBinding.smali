.class public final Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final watchlistFilterCheck:Landroid/widget/ImageView;

.field public final watchlistFilterLanguageCode:Lorg/wikipedia/views/LangCodeView;

.field public final watchlistFilterTitle:Landroid/widget/TextView;

.field public final watchlistFilterWikiLogo:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lorg/wikipedia/views/LangCodeView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterCheck:Landroid/widget/ImageView;

    .line 2
    .line 3
    iput-object p3, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterLanguageCode:Lorg/wikipedia/views/LangCodeView;

    .line 4
    .line 5
    iput-object p4, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterTitle:Landroid/widget/TextView;

    .line 6
    .line 7
    iput-object p5, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterWikiLogo:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/usercontrib/UserContribFilterItemView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/wikipedia/views/LangCodeView;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterCheck:Landroid/widget/ImageView;

    .line 15
    iput-object p3, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterWikiLogo:Landroid/widget/ImageView;

    .line 16
    iput-object p4, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterTitle:Landroid/widget/TextView;

    .line 17
    iput-object p5, p0, Lorg/wikipedia/databinding/ItemWatchlistFilterBinding;->watchlistFilterLanguageCode:Lorg/wikipedia/views/LangCodeView;

    return-void
.end method

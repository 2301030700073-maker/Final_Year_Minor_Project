.class public final Lorg/wikipedia/feed/topread/TopReadArticlesActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/feed/topread/TopReadArticlesActivity;",
        "Lorg/wikipedia/activity/SingleFragmentActivity;",
        "Lorg/wikipedia/feed/topread/TopReadFragment;",
        "<init>",
        "()V",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final createFragment()Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v0, Lorg/wikipedia/feed/topread/TopReadCard;

    .line 9
    .line 10
    const-string v1, "item"

    .line 11
    .line 12
    invoke-static {p0, v1, v0}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/os/Parcelable;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    check-cast p0, Lorg/wikipedia/feed/topread/TopReadCard;

    .line 22
    .line 23
    new-instance v0, Lorg/wikipedia/feed/topread/TopReadFragment;

    .line 24
    .line 25
    invoke-direct {v0}, Lorg/wikipedia/feed/topread/TopReadFragment;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lkotlin/Pair;

    .line 29
    .line 30
    invoke-direct {v2, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    new-array p0, p0, [Lkotlin/Pair;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    aput-object v2, p0, v1

    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/SingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v0, "item"

    .line 12
    .line 13
    const-class v1, Lorg/wikipedia/feed/topread/TopReadCard;

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/os/Parcelable;

    .line 20
    .line 21
    check-cast p1, Lorg/wikipedia/feed/topread/TopReadCard;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    sget-object v0, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    iget-object p1, p1, Lorg/wikipedia/feed/topread/TopReadCard;->articles:Lorg/wikipedia/feed/topread/TopRead;

    .line 28
    .line 29
    iget-object p1, p1, Lorg/wikipedia/feed/topread/TopRead;->localDate$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 30
    .line 31
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    check-cast p1, Lj$/time/LocalDate;

    .line 39
    .line 40
    invoke-static {p1}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    :goto_0
    if-nez p1, :cond_1

    .line 47
    .line 48
    const-string p1, ""

    .line 49
    .line 50
    :cond_1
    const/4 v0, 0x1

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    aput-object p1, v0, v1

    .line 55
    .line 56
    const p1, 0x7f1209c7

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

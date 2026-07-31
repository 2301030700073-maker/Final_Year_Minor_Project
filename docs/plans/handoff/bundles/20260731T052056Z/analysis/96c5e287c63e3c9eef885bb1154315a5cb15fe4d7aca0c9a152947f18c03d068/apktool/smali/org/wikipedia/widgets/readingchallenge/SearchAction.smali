.class public final Lorg/wikipedia/widgets/readingchallenge/SearchAction;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/glance/appwidget/action/ActionCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/widgets/readingchallenge/SearchAction;",
        "Landroidx/glance/appwidget/action/ActionCallback;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onAction(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget p0, Lorg/wikipedia/search/SearchActivity;->$r8$clinit:I

    .line 2
    .line 3
    sget-object p0, Lorg/wikipedia/Constants$InvokeSource;->WIDGET:Lorg/wikipedia/Constants$InvokeSource;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x38

    .line 7
    .line 8
    invoke-static {p1, p0, v0, v0, v1}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/high16 v0, 0x10000000

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object v0, Lorg/wikipedia/widgets/WidgetTypes;->READING_CHALLENGE:Lorg/wikipedia/widgets/WidgetTypes;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/wikipedia/widgets/WidgetTypes;->getValue()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string/jumbo v1, "widgetType"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

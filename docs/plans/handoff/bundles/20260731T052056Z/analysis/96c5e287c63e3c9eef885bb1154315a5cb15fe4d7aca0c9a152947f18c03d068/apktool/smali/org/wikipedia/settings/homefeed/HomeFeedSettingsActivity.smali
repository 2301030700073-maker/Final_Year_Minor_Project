.class public final Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
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
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 10
    .line 11
    const-string v1, "apps-home-feed"

    .line 12
    .line 13
    invoke-direct {v0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "settings"

    .line 17
    .line 18
    iput-object p1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object v0, p0, Lorg/wikipedia/activity/BaseActivity;->_instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "start_destination"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-static {p1}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;->valueOf(Ljava/lang/String;)Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget-object p1, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;->ROOT:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;

    .line 42
    .line 43
    :goto_0
    new-instance v0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, p1, p0, v1}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;I)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    const v2, -0x322708fd

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

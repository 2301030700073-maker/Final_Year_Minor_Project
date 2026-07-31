.class public final Lnet/newpipe/app/platform/AndroidShareHandler;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lnet/newpipe/app/platform/ShareHandler;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/newpipe/app/platform/AndroidShareHandler;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final openUrlInBrowser(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Landroidx/compose/runtime/Latch;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroidx/compose/runtime/Latch;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/runtime/Latch;->build()Landroidx/cardview/widget/CardView$1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, v0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Landroid/content/Intent;

    .line 17
    .line 18
    const/high16 v2, 0x10000000

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lnet/newpipe/app/platform/AndroidShareHandler;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v1, v0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Landroid/content/Intent;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    iget-object p1, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catch_0
    move-exception p0

    .line 45
    sget-object p1, Lco/touchlab/kermit/Logger$Companion;->Companion:Lco/touchlab/kermit/Logger$Companion;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    sget-object v0, Lco/touchlab/kermit/Severity;->Error:Lco/touchlab/kermit/Severity;

    .line 51
    .line 52
    iget-object v1, p1, Lco/touchlab/kermit/Logger$Companion;->config:Lco/touchlab/kermit/JvmMutableLoggerConfig;

    .line 53
    .line 54
    iget-object v1, v1, Lco/touchlab/kermit/JvmMutableLoggerConfig;->_minSeverity:Lco/touchlab/kermit/Severity;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-gtz v1, :cond_0

    .line 61
    .line 62
    const-string v1, "Failed to share URL"

    .line 63
    .line 64
    invoke-virtual {p1, v0, p0, v1}, Lco/touchlab/kermit/Logger$Companion;->processLog(Lco/touchlab/kermit/Severity;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

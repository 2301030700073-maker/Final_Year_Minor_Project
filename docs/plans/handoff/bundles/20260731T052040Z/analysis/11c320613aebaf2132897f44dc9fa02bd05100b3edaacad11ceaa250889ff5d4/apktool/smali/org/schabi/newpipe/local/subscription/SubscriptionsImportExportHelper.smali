.class public final Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$Companion;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final context:Landroid/content/Context;

.field public final fragment:Landroidx/fragment/app/Fragment;

.field public final requestExportLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public final requestImportLauncher:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SubscriptionsImportExportHelper@"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->context:Landroid/content/Context;

    .line 14
    .line 15
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->requestExportLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 35
    .line 36
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper$requestExportLauncher$1;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->requestImportLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final onExportSelected()V
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string/jumbo v1, "yyyyMMddHHmm"

    .line 4
    .line 5
    .line 6
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "newpipe_subscriptions_"

    .line 21
    .line 22
    const-string v2, ".json"

    .line 23
    .line 24
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-object v1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->JSON_MIME_TYPE:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->context:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v3, v0, v1, v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getNewPicker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v1, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportExportHelper;->requestExportLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 45
    .line 46
    invoke-static {p0, v0, v1, v3}, Lokhttp3/Cookie$Companion;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

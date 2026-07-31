.class public final Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final SUPPORTED_APPS:Ljava/util/List;


# instance fields
.field public final context:Landroid/content/Context;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final packageManager$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/AppVersion;

    .line 2
    .line 3
    const-string v1, "com.fsck.k9"

    .line 4
    .line 5
    const v2, 0x985d

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lapp/k9mail/feature/settings/import/ui/AppVersion;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lapp/k9mail/feature/settings/import/ui/AppVersion;

    .line 12
    .line 13
    const-string v2, "net.thunderbird.android"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lapp/k9mail/feature/settings/import/ui/AppVersion;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lapp/k9mail/feature/settings/import/ui/AppVersion;

    .line 20
    .line 21
    const-string v4, "net.thunderbird.android.beta"

    .line 22
    .line 23
    const/4 v5, 0x4

    .line 24
    invoke-direct {v2, v4, v5}, Lapp/k9mail/feature/settings/import/ui/AppVersion;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lapp/k9mail/feature/settings/import/ui/AppVersion;

    .line 28
    .line 29
    const-string v6, "net.thunderbird.android.daily"

    .line 30
    .line 31
    invoke-direct {v4, v6, v3}, Lapp/k9mail/feature/settings/import/ui/AppVersion;-><init>(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    new-array v5, v5, [Lapp/k9mail/feature/settings/import/ui/AppVersion;

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    aput-object v0, v5, v6

    .line 38
    .line 39
    aput-object v1, v5, v3

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    aput-object v2, v5, v0

    .line 43
    .line 44
    const/4 v0, 0x3

    .line 45
    aput-object v4, v5, v0

    .line 46
    .line 47
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;->SUPPORTED_APPS:Ljava/util/List;

    .line 52
    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/thunderbird/core/logging/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 7
    .line 8
    new-instance p1, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/16 p2, 0x1b

    .line 11
    .line 12
    invoke-direct {p1, p2, p0}, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;->packageManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 21
    .line 22
    return-void
.end method

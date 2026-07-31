.class public final Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final context:Landroid/content/Context;

.field public final dataRetriever:Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;

.field public final migrations:Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;->dataRetriever:Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;->migrations:Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;

    .line 9
    .line 10
    return-void
.end method

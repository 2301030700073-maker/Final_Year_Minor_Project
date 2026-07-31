.class public final Lapp/k9mail/feature/widget/unread/UnreadWidgetUpdater;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lapp/k9mail/widget/K9UnreadWidgetConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetUpdater;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetUpdater;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 11
    .line 12
    return-void
.end method

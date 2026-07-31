.class public final Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;


# instance fields
.field public final context:Landroid/content/Context;

.field public final manager:Landroidx/core/app/NotificationManagerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Landroidx/core/app/NotificationManagerCompat;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->manager:Landroidx/core/app/NotificationManagerCompat;

    .line 12
    .line 13
    return-void
.end method

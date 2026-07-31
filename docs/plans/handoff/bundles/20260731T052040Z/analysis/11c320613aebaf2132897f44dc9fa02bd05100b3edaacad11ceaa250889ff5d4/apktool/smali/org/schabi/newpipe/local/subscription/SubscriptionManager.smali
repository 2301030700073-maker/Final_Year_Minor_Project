.class public final Lorg/schabi/newpipe/local/subscription/SubscriptionManager;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final database:Lorg/schabi/newpipe/database/AppDatabase;

.field public final feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

.field public final subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->subscriptionDAO()Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 18
    .line 19
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 25
    .line 26
    return-void
.end method

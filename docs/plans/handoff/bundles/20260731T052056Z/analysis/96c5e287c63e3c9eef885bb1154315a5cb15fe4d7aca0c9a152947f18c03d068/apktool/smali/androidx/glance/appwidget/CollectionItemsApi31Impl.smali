.class public final Landroidx/glance/appwidget/CollectionItemsApi31Impl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Landroidx/glance/appwidget/CollectionItemsApi31Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/glance/appwidget/CollectionItemsApi31Impl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/glance/appwidget/CollectionItemsApi31Impl;->INSTANCE:Landroidx/glance/appwidget/CollectionItemsApi31Impl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final setRemoteAdapter(Landroid/widget/RemoteViews;ILandroidx/glance/appwidget/RemoteCollectionItems;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Landroidx/glance/appwidget/CollectionItemsApi31Impl;->toPlatformCollectionItems(Landroidx/glance/appwidget/RemoteCollectionItems;)Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final toPlatformCollectionItems(Landroidx/glance/appwidget/RemoteCollectionItems;)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .locals 6

    .line 1
    new-instance p0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p1, Landroidx/glance/appwidget/RemoteCollectionItems;->hasStableIds:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->setHasStableIds(Z)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget v0, p1, Landroidx/glance/appwidget/RemoteCollectionItems;->_viewTypeCount:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->setViewTypeCount(I)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object v0, p1, Landroidx/glance/appwidget/RemoteCollectionItems;->ids:[J

    .line 19
    .line 20
    array-length v1, v0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v1, :cond_0

    .line 23
    .line 24
    aget-wide v3, v0, v2

    .line 25
    .line 26
    iget-object v5, p1, Landroidx/glance/appwidget/RemoteCollectionItems;->views:[Landroid/widget/RemoteViews;

    .line 27
    .line 28
    aget-object v5, v5, v2

    .line 29
    .line 30
    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 31
    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

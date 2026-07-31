.class final Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaRouteChooserDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RouteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/support/v7/media/MediaRouter$RouteInfo;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Landroid/support/v7/app/MediaRouteChooserDialog;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/MediaRouteChooserDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p3, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouter$RouteInfo;>;"
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    .line 194
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 195
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 196
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 210
    move-object v0, p2

    .line 211
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 212
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Landroid/support/v7/mediarouter/R$layout;->mr_media_route_list_item:I

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 214
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 215
    .local v2, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    const v3, 0x1020014

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 216
    .local v3, "text1":Landroid/widget/TextView;
    const v4, 0x1020015

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 217
    .local v4, "text2":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "description":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 220
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    const-string v1, ""

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :goto_0
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 227
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 205
    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 232
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 233
    .local v0, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->select()V

    .line 235
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteAdapter;->this$0:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/MediaRouteChooserDialog;->dismiss()V

    .line 237
    :cond_0
    return-void
.end method

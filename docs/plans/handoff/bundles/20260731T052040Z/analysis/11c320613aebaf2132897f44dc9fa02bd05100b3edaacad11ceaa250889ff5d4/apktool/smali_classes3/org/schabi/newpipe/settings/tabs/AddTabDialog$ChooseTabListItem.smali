.class public final Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final itemIcon:I

.field public final itemName:Ljava/lang/String;

.field public final tabId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;->tabId:I

    .line 5
    .line 6
    iput-object p3, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;->itemName:Ljava/lang/String;

    .line 7
    .line 8
    iput p2, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;->itemIcon:I

    .line 9
    .line 10
    return-void
.end method

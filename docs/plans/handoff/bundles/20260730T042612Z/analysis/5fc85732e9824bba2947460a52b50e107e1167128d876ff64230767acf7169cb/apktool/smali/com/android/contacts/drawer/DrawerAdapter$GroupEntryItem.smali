.class public Lcom/android/contacts/drawer/DrawerAdapter$GroupEntryItem;
.super Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;
.source "DrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/drawer/DrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupEntryItem"
.end annotation


# instance fields
.field private final group:Lcom/android/contacts/group/GroupListItem;


# direct methods
.method public constructor <init>(ILcom/android/contacts/group/GroupListItem;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 420
    invoke-direct {p0, v0, p1, v1, v1}, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;-><init>(IIII)V

    .line 421
    iput-object p2, p0, Lcom/android/contacts/drawer/DrawerAdapter$GroupEntryItem;->group:Lcom/android/contacts/group/GroupListItem;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/drawer/DrawerAdapter$GroupEntryItem;)Lcom/android/contacts/group/GroupListItem;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/android/contacts/drawer/DrawerAdapter$GroupEntryItem;->group:Lcom/android/contacts/group/GroupListItem;

    return-object p0
.end method

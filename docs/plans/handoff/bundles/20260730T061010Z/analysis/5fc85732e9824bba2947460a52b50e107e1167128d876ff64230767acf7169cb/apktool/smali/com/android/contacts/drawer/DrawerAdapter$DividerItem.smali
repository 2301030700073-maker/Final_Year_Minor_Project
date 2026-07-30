.class public Lcom/android/contacts/drawer/DrawerAdapter$DividerItem;
.super Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;
.source "DrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/drawer/DrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DividerItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 411
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;-><init>(IIII)V

    return-void
.end method

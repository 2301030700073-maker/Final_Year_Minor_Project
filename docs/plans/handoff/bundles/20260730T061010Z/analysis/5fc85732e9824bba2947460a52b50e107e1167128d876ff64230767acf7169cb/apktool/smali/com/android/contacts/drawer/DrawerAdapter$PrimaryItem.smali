.class public Lcom/android/contacts/drawer/DrawerAdapter$PrimaryItem;
.super Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;
.source "DrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/drawer/DrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrimaryItem"
.end annotation


# instance fields
.field public final contactsView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;


# direct methods
.method public constructor <init>(IIILcom/android/contacts/activities/PeopleActivity$ContactsView;)V
    .locals 1

    const/4 v0, 0x0

    .line 382
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;-><init>(IIII)V

    .line 383
    iput-object p4, p0, Lcom/android/contacts/drawer/DrawerAdapter$PrimaryItem;->contactsView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    return-void
.end method

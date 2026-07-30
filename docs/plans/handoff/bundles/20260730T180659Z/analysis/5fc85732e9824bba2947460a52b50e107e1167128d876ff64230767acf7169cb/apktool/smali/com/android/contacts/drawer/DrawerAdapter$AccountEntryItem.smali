.class public Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;
.super Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;
.source "DrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/drawer/DrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountEntryItem"
.end annotation


# instance fields
.field private final account:Lcom/android/contacts/list/ContactListFilter;


# direct methods
.method public constructor <init>(ILcom/android/contacts/list/ContactListFilter;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 430
    invoke-direct {p0, v0, p1, v1, v1}, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;-><init>(IIII)V

    .line 431
    iput-object p2, p0, Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;->account:Lcom/android/contacts/list/ContactListFilter;

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;)Lcom/android/contacts/list/ContactListFilter;
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;->account:Lcom/android/contacts/list/ContactListFilter;

    return-object p0
.end method

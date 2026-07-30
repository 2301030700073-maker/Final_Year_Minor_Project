.class public Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;
.super Ljava/lang/Object;
.source "DrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/drawer/DrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseDrawerItem"
.end annotation


# instance fields
.field public final icon:I

.field public final id:I

.field public final text:I

.field public final viewType:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput p1, p0, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->viewType:I

    .line 370
    iput p2, p0, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->id:I

    .line 371
    iput p3, p0, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->text:I

    .line 372
    iput p4, p0, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->icon:I

    return-void
.end method

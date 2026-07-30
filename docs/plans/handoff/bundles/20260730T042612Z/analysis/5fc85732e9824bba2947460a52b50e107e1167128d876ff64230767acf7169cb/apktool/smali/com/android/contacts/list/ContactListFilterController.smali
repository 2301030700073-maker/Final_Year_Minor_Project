.class public abstract Lcom/android/contacts/list/ContactListFilterController;
.super Ljava/lang/Object;
.source "ContactListFilterController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    }
.end annotation


# static fields
.field private static sFilterController:Lcom/android/contacts/list/ContactListFilterControllerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/contacts/list/ContactListFilterController;->sFilterController:Lcom/android/contacts/list/ContactListFilterControllerImpl;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/contacts/list/ContactListFilterControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/list/ContactListFilterController;->sFilterController:Lcom/android/contacts/list/ContactListFilterControllerImpl;

    .line 46
    :cond_0
    sget-object p0, Lcom/android/contacts/list/ContactListFilterController;->sFilterController:Lcom/android/contacts/list/ContactListFilterControllerImpl;

    return-object p0
.end method


# virtual methods
.method public abstract addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
.end method

.method public abstract checkFilterValidity(Z)V
.end method

.method public abstract getFilter()Lcom/android/contacts/list/ContactListFilter;
.end method

.method public abstract getFilterListType()I
.end method

.method public abstract getPersistedFilter()Lcom/android/contacts/list/ContactListFilter;
.end method

.method public abstract isCustomFilterPersisted()Z
.end method

.method public abstract removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
.end method

.method public abstract selectCustomFilter()V
.end method

.method public abstract setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V
.end method

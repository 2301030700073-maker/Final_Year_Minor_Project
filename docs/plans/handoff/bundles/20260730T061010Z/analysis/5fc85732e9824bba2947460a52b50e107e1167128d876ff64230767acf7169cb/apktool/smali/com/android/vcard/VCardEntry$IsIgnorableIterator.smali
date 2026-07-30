.class Lcom/android/vcard/VCardEntry$IsIgnorableIterator;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElementIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsIgnorableIterator"
.end annotation


# instance fields
.field private mEmpty:Z


# direct methods
.method private constructor <init>(Lcom/android/vcard/VCardEntry;)V
    .locals 0

    .line 1640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1641
    iput-boolean p1, p0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$1;)V
    .locals 0

    .line 1640
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;-><init>(Lcom/android/vcard/VCardEntry;)V

    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .line 1671
    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    return v0
.end method

.method public onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z
    .locals 0

    .line 1661
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1662
    iput-boolean p1, p0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->mEmpty:Z

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onElementGroupEnded()V
    .locals 0

    return-void
.end method

.method public onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V
    .locals 0

    return-void
.end method

.method public onIterationEnded()V
    .locals 0

    return-void
.end method

.method public onIterationStarted()V
    .locals 0

    return-void
.end method

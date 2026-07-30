.class public Lcom/android/contacts/model/CPOWrapper;
.super Ljava/lang/Object;
.source "CPOWrapper.java"


# instance fields
.field private mOperation:Landroid/content/ContentProviderOperation;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderOperation;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/contacts/model/CPOWrapper;->mOperation:Landroid/content/ContentProviderOperation;

    .line 31
    iput p2, p0, Lcom/android/contacts/model/CPOWrapper;->mType:I

    return-void
.end method


# virtual methods
.method public getOperation()Landroid/content/ContentProviderOperation;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/contacts/model/CPOWrapper;->mOperation:Landroid/content/ContentProviderOperation;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/android/contacts/model/CPOWrapper;->mType:I

    return v0
.end method

.method public setOperation(Landroid/content/ContentProviderOperation;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/contacts/model/CPOWrapper;->mOperation:Landroid/content/ContentProviderOperation;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/android/contacts/model/CPOWrapper;->mType:I

    return-void
.end method

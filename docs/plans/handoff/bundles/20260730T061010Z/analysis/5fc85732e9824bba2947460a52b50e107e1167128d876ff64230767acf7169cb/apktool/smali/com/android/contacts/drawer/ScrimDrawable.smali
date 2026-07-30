.class public Lcom/android/contacts/drawer/ScrimDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "ScrimDrawable.java"


# instance fields
.field private mIntrinsicHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x33000000

    .line 32
    invoke-direct {p0, v0}, Lcom/android/contacts/drawer/ScrimDrawable;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/android/contacts/drawer/ScrimDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public setIntrinsicHeight(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/contacts/drawer/ScrimDrawable;->mIntrinsicHeight:I

    return-void
.end method

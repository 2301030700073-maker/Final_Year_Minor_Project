.class public interface abstract Lcom/android/contacts/editor/RawContactEditorView$Listener;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/RawContactEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBindEditorsFailed()V
.end method

.method public abstract onEditorsBound()V
.end method

.method public abstract onNameFieldChanged(JLcom/android/contacts/model/ValuesDelta;)V
.end method

.method public abstract onRebindEditorsForNewContact(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountWithDataSet;)V
.end method

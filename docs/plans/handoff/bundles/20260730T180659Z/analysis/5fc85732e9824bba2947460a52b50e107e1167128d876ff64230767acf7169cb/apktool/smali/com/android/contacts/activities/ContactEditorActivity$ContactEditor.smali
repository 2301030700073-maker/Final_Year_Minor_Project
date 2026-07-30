.class public interface abstract Lcom/android/contacts/activities/ContactEditorActivity$ContactEditor;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContactEditor"
.end annotation


# virtual methods
.method public abstract load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
.end method

.method public abstract onJoinCompleted(Landroid/net/Uri;)V
.end method

.method public abstract onSaveCompleted(ZIZLandroid/net/Uri;Ljava/lang/Long;)V
.end method

.method public abstract revert()Z
.end method

.method public abstract setIntentExtras(Landroid/os/Bundle;)V
.end method

.method public abstract setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V
.end method
